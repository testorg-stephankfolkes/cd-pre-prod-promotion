
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'bugtest2-branch'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
