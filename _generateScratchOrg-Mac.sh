echo '##### CREATING SCRATCH ORG #####'
. sfdx force:org:create -f config/project-scratch-def.json -a gitPractice -s
echo '##### PUSHING METADATA #####'
. sfdx force:source:push -u gitPractice
echo '##### IMPORTING DATA #####'
. sfdx force:data:tree:import -f ./data/Account.json -u gitPractice
echo '##### OPENING SCRATCH ORG #####'
. sfdx force:org:open