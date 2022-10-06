
pluginConfiguration 'Git', {
  description = ''
  field = [
    'authType': 'token',
    'debugLevel': '0',
    'ignoreSSLErrors': 'true',
    'library': 'jgit',
    'token_credential': 'token_credential',
  ]
  pluginKey = 'EC-Git'
  projectName = 'cd-pre-prod-promotion'

  addCredential 'token_credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'cd-pre-prod-promotion'
  }
}
