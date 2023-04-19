
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'acl_test'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
