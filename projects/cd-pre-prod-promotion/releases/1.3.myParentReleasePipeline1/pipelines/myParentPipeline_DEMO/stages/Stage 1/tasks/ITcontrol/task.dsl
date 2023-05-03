import java.io.File


task 'ITcontrol', {
  applicationVersion = 'dev'
  command = new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/ITcontrol.cmd").text
  taskType = 'COMMAND'
}
