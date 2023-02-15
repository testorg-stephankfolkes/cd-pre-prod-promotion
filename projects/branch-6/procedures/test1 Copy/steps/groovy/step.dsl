import java.io.File


step 'groovy', {
  command = new File(projectDir, "./procedures/test1 Copy/steps/groovy.groovy").text
  parallel = '1'
  resourceName = 'new-agent-flow-agents'
  shell = 'ec-groovy'
  timeLimit = '0'

  attachCredential {
    credentialName = '/projects/branch-6/credentials/Ammar-Test'
  }
}
