
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'import-test-branch1'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
