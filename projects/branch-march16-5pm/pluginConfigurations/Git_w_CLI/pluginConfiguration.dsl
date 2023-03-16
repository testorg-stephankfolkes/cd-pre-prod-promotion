
pluginConfiguration 'Git_w_CLI', {
  credentialReferenceParameter = [
    'token_credential': '/projects/branch-march16-5pm/credentials/GIT_PAT',
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
