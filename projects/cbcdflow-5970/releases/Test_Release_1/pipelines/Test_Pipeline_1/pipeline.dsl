
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'cbcdflow-5970'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
