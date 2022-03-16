git clone -b $[/myProcedure/cloneInitialBranch] https://$(ectool getFullCredential git-creds-pat --value password)@$[/myProcedure/gitScmDomain]/$[/myProcedure/SCM_ORG]/$[/myJob/shortProjectName].git $[/myProcedure/clone_directory]
ls -lart $[/myProcedure/clone_directory]
