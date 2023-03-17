
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-mar17-1pm'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
