
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'name-test1'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
