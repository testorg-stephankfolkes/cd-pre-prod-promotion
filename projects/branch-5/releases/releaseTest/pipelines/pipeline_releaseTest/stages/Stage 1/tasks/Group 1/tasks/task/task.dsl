import java.io.File


task 'task', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/releaseTest/pipelines/pipeline_releaseTest/stages/Stage 1/tasks/Group 1/tasks/task.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
