import java.io.File


step 'cmd', {
  command = new File(projectDir, "./procedures/test1 Copy/steps/cmd.cmd").text
  parallel = '1'
  resourceName = 'new-agent-flow-agents'
  timeLimit = '0'
}
