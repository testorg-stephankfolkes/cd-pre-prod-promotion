acl{
  inheriting = '0'
  aclEntry 'user', principalName: 'project: validate-branch-name', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
  aclEntry 'user', principalName: 'project: feature_kiethTest', {
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
