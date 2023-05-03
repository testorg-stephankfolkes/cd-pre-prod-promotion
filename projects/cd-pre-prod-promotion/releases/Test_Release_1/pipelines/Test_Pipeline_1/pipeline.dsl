
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'cd-pre-prod-promotion'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
