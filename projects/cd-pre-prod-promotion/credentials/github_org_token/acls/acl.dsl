acl{
  inheriting = '0'
  aclEntry 'user', principalName: 'project: Santosh Testing', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
  aclEntry 'user', principalName: 'project: cd-pre-prod-promotion', {
    changePermissionsPrivilege = 'inherit'
    executePrivilege = 'allow'
    modifyPrivilege = 'inherit'
    readPrivilege = 'allow'
  }
  aclEntry 'user', principalName: 'project: CBCD_Platform_Core', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
