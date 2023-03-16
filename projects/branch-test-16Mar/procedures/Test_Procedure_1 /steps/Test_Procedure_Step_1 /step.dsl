import java.io.File


step 'Test_Procedure_Step_1 ', {
  command = new File(projectDir, "./procedures/Test_Procedure_1 /steps/Test_Procedure_Step_1 .cmd").text
  timeLimit = '0'
}
