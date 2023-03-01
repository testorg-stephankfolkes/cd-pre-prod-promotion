import java.io.File


process 'Test_App_Process_1', {
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }
}
