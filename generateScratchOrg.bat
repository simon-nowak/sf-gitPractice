echo '##### CREATING SCRATCH ORG #####'
call sfdx force:org:create -f config/project-scratch-def.json -a gitPractice -s
echo '##### PUSHING METADATA #####'
call sfdx force:source:push -u gitPractice
echo '##### IMPORTING DATA #####'
call sfdx force:data:tree:import -f ./data/Account.json -u gitPractice
echo '##### OPENING SCRATCH ORG #####'
call sfdx force:org:open