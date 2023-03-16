import java.io.File


task 'task', {
  applicationVersion = 'dev'
  command = new File(projectDir, "./releases/releaseTest/pipelines/pipeline_releaseTest/stages/Stage 1/tasks/Group 1/tasks/task.cmd").text
  taskType = 'COMMAND'
}
