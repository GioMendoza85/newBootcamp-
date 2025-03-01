## Solution Guide: Task Scheduling


1. As the user `azadmin`, create a newly scheduled task.

2. Launch the Task Scheduler GUI application from the Start menu.

   - Press the **Windows** key and open Task Scheduler.

3. Create a new task.

    - Create a new task by selecting **Create Task...** on the **Actions** pane.
  
    - **Note:** If you don't see the Actions pane on the right, go to **View** > **Customize** and make sure Action Pane is enabled.

    - Enter a **Name** for the task.

4. Navigate to the scheduling section.

   - In the Create Task GUI window, navigate to the **Triggers** tab, and click **New...**.

   - Set **Begin the task** to **On a schedule**.

5. Schedule the task to execute every day.

    - Make sure the task is set to repeat daily with `Recur every:[x] day` set to 1, and the start date set to today. It should already be set, but you may have to input it manually.

6. Make sure the time is set to execute after a minute or two from your current time (so that we can make sure it executes properly).

   - Select **OK** to save your changes and return to the Create Task window.

----

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
