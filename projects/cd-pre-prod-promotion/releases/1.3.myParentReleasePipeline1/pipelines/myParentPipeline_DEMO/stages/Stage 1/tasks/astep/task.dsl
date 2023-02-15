import java.io.File


task 'astep', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/astep.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
