import java.io.File


task 'astep', {
  applicationVersion = 'dev'
  command = new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/astep.cmd").text
  taskType = 'COMMAND'
}
