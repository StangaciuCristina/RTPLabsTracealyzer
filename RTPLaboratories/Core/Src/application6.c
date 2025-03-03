#include "main.h"
#include "cmsis_os.h"
#include "application6.h"

/* Used as a loop counter to create a very crude delay. */
#define mainDELAY_LOOP_COUNT		( 0xffffff )
#define GREEN_LED LD4_Pin
#define BLUE_LED LD6_Pin
#define RED_LED LD5_Pin
#define ORANGE_LED LD3_Pin

void vContinuousProcessingTask( void *pvParameters )
{
	uint16_t *LED;
	LED = (uint16_t  *)pvParameters;

	/* As per most tasks, this task is implemented in an infinite loop. */
	for( ;; )
	{
		/* toggle the right LED. */
		HAL_GPIO_TogglePin(GPIOD, *LED);
	}
}
/*-----------------------------------------------------------*/
void vPeriodicTask( void *pvParameters )
{
	uint16_t *LED;
	LED = (uint16_t  *)pvParameters;
	TickType_t xLastWakeTime;
	const TickType_t xDelay250ms = pdMS_TO_TICKS( 250UL );
	/* The xLastWakeTime variable needs to be initialized with the current tick
	count.  Note that this is the only time we access this variable.  From this
	point on xLastWakeTime is managed automatically by the vTaskDelayUntil()
	API function. */
	xLastWakeTime = xTaskGetTickCount();

	/* As per most tasks, this task is implemented in an infinite loop. */
	for( ;; )
	{
		/* toggle the right LED. */
		HAL_GPIO_TogglePin(GPIOD, *LED);

		/* We want this task to execute exactly every 100 milliseconds. */
		//osDelayUntil(&xLastWakeTime, 100UL);
		vTaskDelayUntil(&xLastWakeTime,xDelay250ms);
	}
}

uint16_t  Task1LED = GREEN_LED;
uint16_t  Task2LED = BLUE_LED;
uint16_t  Task3LED = RED_LED;


inline void application6(void)
{

	/* Create two instances of the continuous processing task, both at priority	1. */
		xTaskCreate( vContinuousProcessingTask, "Task 1", 100, (void*)&Task1LED, 1, NULL );
		xTaskCreate( vContinuousProcessingTask, "Task 2", 100, (void*)&Task2LED, 1, NULL );
	/* Create one instance of the periodic task at priority 2. */
		xTaskCreate( vPeriodicTask, "Task 3", 100, (void*)&Task3LED, 2, NULL );

}
