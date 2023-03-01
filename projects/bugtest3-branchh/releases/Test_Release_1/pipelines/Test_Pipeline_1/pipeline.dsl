
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'bugtest3-branchh'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
