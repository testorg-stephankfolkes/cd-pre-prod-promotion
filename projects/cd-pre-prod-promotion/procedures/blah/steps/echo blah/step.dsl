import java.io.File


step 'echo blah', {
  command = new File(projectDir, "./procedures/blah/steps/echo blah.cmd").text
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
