
pluginConfiguration 'def_git_config', {
  field = [
    'authType': 'key',
    'checkConnectionResource': 'gen-agents-flow-agent-0',
    'debugLevel': '1',
    'ignoreSSLErrors': 'false',
    'key_credential': 'key_credential',
    'library': 'git',
    'repositoryURL': 'git@github.com:cloudbees/cd-promop-dev.git',
  ]
  pluginKey = 'EC-Git'

  addCredential 'key_credential', {
    passwordRecoveryAllowed = '1'
  }
}
