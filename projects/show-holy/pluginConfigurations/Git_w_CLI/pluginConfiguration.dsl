
pluginConfiguration 'Git_w_CLI', {
  description = ''
  credentialReferenceParameter = [
    'token_credential': '/projects/show-holy/credentials/GIT_PAT',
  ]
  field = [
    'authType': 'token',
    'debugLevel': '0',
    'ignoreSSLErrors': 'true',
    'library': 'git',
    'token_credential': 'token_credential',
  ]
  pluginKey = 'EC-Git'
}
