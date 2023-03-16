
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-nimbus-0323-1'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
