import java.io.File


task 'ITcontrol', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/ITcontrol.cmd").text,
  ]
  applicationVersion = 'dev'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
