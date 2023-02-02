
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

  addCredential 'token_credential', {
    passwordRecoveryAllowed = '1'
  }
}
