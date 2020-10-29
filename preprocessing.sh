#! /bin/bash

workSpace=$1

#Unzips database dumps after changing the directories.
unzipTheDump()
{
	cd $workSpace/src/test/resources/

	#Extracts CPs suite dump file. 
	unzip -o cps/os_fresh.zip -d cps/

	#Extracts Institutes suite dump file 
	unzip -o institutes/os_fresh.zip -d institutes/ 

	#Extracts Participants suite dump file.
  	unzip -o participants/os_fresh.zip -d participants/

	#Extracts Sites suite dump file.
	unzip -o sites/os_fresh.zip -d sites/

	#Extracts User_Roles suite dump file.
	unzip -o user_roles/os_fresh.zip -d user_roles/

	#Extracts User_Roles suite dump file.
	unzip -o users/os_fresh.zip -d users/

}


# Script starts from here
if [ -d "$workSpace" ] 
then
	unzipTheDump
else
	echo "Please enter the os-api-tests Directory Path through command line!!"
exit		
fi
