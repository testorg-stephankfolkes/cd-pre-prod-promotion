
task 'Collect Change Window Data', {
  description = 'Get the change window data from the user. Users from the CRApprover, ProjectAdmin and DevOps groups are authorised to approve.'
  actionLabelText = '{"completed":"Continue","failed":"Abort"}'
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '1'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  instruction = 'Enter the scheduled date and time to perform the project DSL import.'
  notificationEnabled = '0'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  requiredApprovalsCount = '1'
  resourceName = ''
  skippable = '0'
  taskType = 'MANUAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    '$[/myPipelineRuntime/group-ProjectAdmin]',
    '$[/myPipelineRuntime/group-CRApprover]',
    '$[/myPipelineRuntime/group-DevOps]',
  ]

  formalParameter 'date', {
    description = 'Enter the scheduled DSL import date. This will be the day the schedule will run.'
    expansionDeferred = '0'
    label = 'Schedule DSL Import Date'
    orderIndex = '1'
    required = '1'
    type = 'date'
  }

  formalParameter 'timeZone', defaultValue: 'Etc/UTC', {
    expansionDeferred = '0'
    label = 'Time Zone'
    optionsDsl = '''import java.time.ZoneId
  import com.electriccloud.domain.FormalParameterOptionsResult

  def options = new FormalParameterOptionsResult()
  def result = ZoneId.getAvailableZoneIds()

  result.each{
      options.add(it,it)
  }

  return options'''
    orderIndex = '2'
    required = '1'
    type = 'select'
  }

  formalParameter 'time', defaultValue: '12:00', {
    description = 'Use a 24hour format. E.g. 17:00'
    expansionDeferred = '0'
    label = 'Schedule Import Time (24hr)'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }
}
