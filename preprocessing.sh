#! /bin/bash

zipFile='os_fresh.zip'
unzippedFile='os_fresh.sql'
workSpace=$1

#Unzips database dumps after changing the directories.
unzipTheDump()
{
	#Extracts Institute and User Suite dump file.
	unzip -o $workSpace/src/test/resources/os_fresh.zip -d $workSpace/src/test/resources/

	#Extracts CP suite dump file. 
	unzip -o $workSpace/src/test/resources/cp/os_fresh.zip -d $workSpace/src/test/resources/cp/

	#Extracts Participants suite dump file.
  	unzip -o $workSpace/src/test/resources/participants/os_fresh.zip -d $workSpace/src/test/resources/participants/

	#Extracts Site suite dump file.
	unzip -o $workSpace/src/test/resources/site/os_fresh.zip -d $workSpace/src/test/resources/site/

	#Extracts User_Roles suite dump file.
	unzip -o $workSpace/src/test/resources/user_roles/os_fresh.zip -d $workSpace/src/test/resources/user_roles/

}


# Script Starts From Here
if [ -d "$workSpace" ] 
then
	unzipTheDump
else
	echo "Please enter the os-api-tests Directory Path through command line!!"
exit		
fi
