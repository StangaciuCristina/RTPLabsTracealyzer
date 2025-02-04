#include "application24.h"
#include "main.h"
#include "cmsis_os.h"
#include "timers.h"
#include "semphr.h"
#include "time.h"
#include "stm32f4xx_it.h"

/* Used as a loop counter to create a very crude delay. */
#define mainDELAY_LOOP_COUNT		( 0xffffff )
#define GREEN_LED LD4_Pin
#define BLUE_LED LD6_Pin
#define RED_LED LD5_Pin
#define ORANGE_LED LD3_Pin

/* Used as a loop counter to create a very crude delay. */
#define mainDELAY_LOOP_COUNT		( 0xffffff )

/* Definitions for the event bits in the event group. */
#define mainFIRST_TASK_BIT	( 1UL << 0UL ) /* Event bit 0, which is set by the first task. */
#define mainSECOND_TASK_BIT	( 1UL << 1UL ) /* Event bit 1, which is set by the second task. */
#define mainTHIRD_TASK_BIT	( 1UL << 2UL ) /* Event bit 2, which is set by the third task. */

/* The rate at which the periodic task generates software interrupts. */
static const TickType_t xInterruptFrequency = pdMS_TO_TICKS( 50UL );

/* Stores the handle of the task to which interrupt processing is deferred. */
static TaskHandle_t xHandlerTask = NULL;


static void vHandlerTask( void *pvParameters )
{
/* xMaxExpectedBlockTime is set to be a little longer than the maximum expected
time between events. */
const TickType_t xMaxExpectedBlockTime = xInterruptFrequency + pdMS_TO_TICKS( 10 );
uint32_t ulEventsToProcess;

	/* As per most tasks, this task is implemented within an infinite loop. */
	for( ;; )
	{
		/* Wait to receive a notification sent directly to this task from the
		interrupt handler. */
		ulEventsToProcess = ulTaskNotifyTake( pdTRUE, xMaxExpectedBlockTime );
		if( ulEventsToProcess != 0 )
		{
			/* To get here at least one event must have occurred.  Loop here
			until all the pending events have been processed (in this case, just
			print out a message for each event). */
			while( ulEventsToProcess > 0 )
			{
				HAL_GPIO_TogglePin(GPIOD, BLUE_LED);
				ulEventsToProcess--;
			}
		}
		else
		{
			/* If this part of the function is reached then an interrupt did not
			arrive within the expected time, and (in a real application) it may
			be necessary to perform some error recovery operations. */
		}
	}
}
/*-----------------------------------------------------------*/

static void vPeriodicTask( void *pvParameters )
{
	/* As per most tasks, this task is implemented within an infinite loop. */
	for( ;; )
	{
		/* This task is just used to 'simulate' an interrupt.  This is done by
		periodically generating a simulated software interrupt.  Block until it
		is time to generate the software interrupt again. */
		vTaskDelay( xInterruptFrequency );

		/* Generate the interrupt, printing a message both before and after
		the interrupt has been generated so the sequence of execution is evident
		from the output.

		The syntax used to generate a software interrupt is dependent on the
		FreeRTOS port being used.  The syntax used below can only be used with
		the FreeRTOS Windows port, in which such interrupts are only
		simulated. */
		HAL_GPIO_TogglePin(GPIOD, GREEN_LED);
	}
}

void EXTI0_IRQHandler(void)
{
	BaseType_t xHigherPriorityTaskWoken;

	/* The xHigherPriorityTaskWoken parameter must be initialized to pdFALSE as
	it will get set to pdTRUE inside the interrupt safe API function if a
	context switch is required. */
	xHigherPriorityTaskWoken = pdFALSE;

	/* Send a notification directly to the handler task. */
	vTaskNotifyGiveFromISR( /* The handle of the task to which the notification
							is being sent.  The handle was saved when the task
							was created. */
							xHandlerTask,

							/* xHigherPriorityTaskWoken is used in the usual
							way. */
							&xHigherPriorityTaskWoken );

  HAL_GPIO_TogglePin(GPIOD, RED_LED);

  /* USER CODE END EXTI0_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);
  /* USER CODE BEGIN EXTI0_IRQn 1 */

  /* USER CODE END EXTI0_IRQn 1 */
}


inline void application24(void)
{
	/* Create the 'handler' task, which is the task to which interrupt
	processing is deferred, and so is the task that will be synchronized
	with the interrupt.  The handler task is created with a high priority to
	ensure it runs immediately after the interrupt exits.  In this case a
	priority of 3 is chosen.  The handle of the task is saved for use by the
	ISR. */
	xTaskCreate( vHandlerTask, "Handler", 1000, NULL, 3, &xHandlerTask );

	/* Create the task that will periodically generate a software interrupt.
	This is created with a priority below the handler task to ensure it will
	get preempted each time the handler task exits the Blocked state. */
	xTaskCreate( vPeriodicTask, "Periodic", 1000, NULL, 1, NULL );

}
