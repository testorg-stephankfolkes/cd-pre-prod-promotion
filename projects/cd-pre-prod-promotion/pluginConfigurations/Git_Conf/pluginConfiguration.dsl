
pluginConfiguration 'Git_Conf', {
  description = ''
  field = [
    'authType': 'password',
    'checkConnectionResource': 'https://github.com/cloudbees/cd-promop-dev',
    'debugLevel': '0',
    'ignoreSSLErrors': 'true',
    'library': 'jgit',
  ]
  pluginKey = 'EC-Git'
  projectName = 'cd-pre-prod-promotion'
}
