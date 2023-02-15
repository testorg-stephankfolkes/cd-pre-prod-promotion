
deployerApplication 'SANKEI-Application-1', {
  enforceDependencies = '1'
  orderIndex = '1'
  processName = 'SANKEI-ApplicationProcess'
  stageArtifacts = '1'

  deployerConfiguration '9757649a-ad4c-11ed-98b2-366997d364f8', {
    environmentName = 'env'
    processName = 'SANKEI-ApplicationProcess'
    stageName = 'SANKEI-pipeline-1-stage-1'
  }
}
