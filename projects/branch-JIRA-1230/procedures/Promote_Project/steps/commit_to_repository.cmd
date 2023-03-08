cd $[/myProcedure/clone_directory]

git config --global user.email $[/myProcedure/committerEmail]
git config --global user.name $[/myProcedure/committerName]

git add .
git commit -m "$[jsonDetails]"