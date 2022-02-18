
pluginConfiguration 'githubexample', {
  description = ''
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
  ]
  pluginKey = 'EC-Github'
  projectName = 'cd-pre-prod-promotion'

  addCredential 'bearer_credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'cd-pre-prod-promotion'
  }
}
