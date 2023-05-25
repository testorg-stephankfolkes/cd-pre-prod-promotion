import java.io.File


step 'SANKEI-procedureStep-1_new_name', {
  command = new File(projectDir, "./procedures/SANKEI-procedure-1/steps/SANKEI-procedureStep-1_new_name.cmd").text
  timeLimit = '0'
}
