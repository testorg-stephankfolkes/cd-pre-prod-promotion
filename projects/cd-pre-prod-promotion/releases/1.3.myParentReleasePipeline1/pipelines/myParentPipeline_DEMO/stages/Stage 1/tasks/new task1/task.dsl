import java.io.File


task 'new task1', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/new task1.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
