import java.io.File


step 'SANKEI-procedureStep-1', {
  command = new File(projectDir, "./procedures/SANKEI-procedure-1/steps/SANKEI-procedureStep-1.cmd").text
  timeLimit = '0'
}
