
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: feature-test2', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
