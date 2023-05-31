import java.io.File


step 'echo echo', {
  command = new File(projectDir, "./procedures/test1 Copy/steps/echo echo.cmd").text
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
