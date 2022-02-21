echo $[projName]
echo "Grab short name for project $[projName]"
pnameShort=$(echo $[projName]| cut -d'/' -f 3)
echo "Short name is $pnameShort"
ectool setProperty /myJob/shortProjectName $pnameShort
