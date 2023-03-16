
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-march16-index3'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
