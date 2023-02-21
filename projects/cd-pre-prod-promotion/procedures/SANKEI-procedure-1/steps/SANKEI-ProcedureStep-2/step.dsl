import java.io.File


step 'SANKEI-ProcedureStep-2', {
  command = new File(projectDir, "./procedures/SANKEI-procedure-1/steps/SANKEI-ProcedureStep-2.cmd").text
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
