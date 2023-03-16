import java.io.File


task 're', {
  description = '123 desc'
  applicationVersion = 'dev'
  command = new File(projectDir, "./pipelines/testpipeline/stages/Stage 1/tasks/re.cmd").text
  taskType = 'COMMAND'
}
