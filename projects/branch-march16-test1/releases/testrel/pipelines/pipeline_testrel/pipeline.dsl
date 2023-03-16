
pipeline 'pipeline_testrel', {

  formalParameter 'param', {
    orderIndex = '1'
    propertyReference = '$[/projects/branch-march16-test1/appChangeType]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
