import java.io.File


task 'Test_Task_1', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Test_Release_1/pipelines/Test_Pipeline_1/stages/Stage 1/tasks/Test_Task_1.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
