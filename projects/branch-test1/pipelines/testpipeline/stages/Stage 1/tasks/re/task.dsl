import java.io.File


task 're', {
  description = '123 desc'
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/testpipeline/stages/Stage 1/tasks/re.cmd").text,
  ]
  applicationVersion = 'dev'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
