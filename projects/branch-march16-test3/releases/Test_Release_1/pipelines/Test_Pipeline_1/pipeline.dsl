
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-march16-test3'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
