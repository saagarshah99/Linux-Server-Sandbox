#!/bin/bash	
echo "Build Type: ${DEPLOYMENTTYPE}"
if [ "${DEPLOYMENTTYPE}" = "Start" ]; then
	echo "Start New Django Web App"
	/tmp/test/Deploy-Django-Web-App.sh
elif [ "${DEPLOYMENTTYPE}" = "Stop" ]; then
	echo "Stopping Existing Django Web App"
    /tmp/test/Stop-Django-Web-App.sh
else
	echo "Invalid DEPLOYMENTTYPE selected."
	exit 1 # Exit with error
fi

