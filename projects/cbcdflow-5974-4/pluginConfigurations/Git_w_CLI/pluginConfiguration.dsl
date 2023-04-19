
pluginConfiguration 'Git_w_CLI', {
  credentialReferenceParameter = [
    'token_credential': '/projects/cbcdflow-5974-4/credentials/GIT_PAT',
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
