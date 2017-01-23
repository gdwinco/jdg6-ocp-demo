#!/bin/bash 
# add -x to line above to debug
# requires bash 4.2 or later

OPENSHIFT_PRIMARY_USER_DEFAULT=admin
OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT=admin
OPENSHIFT_DOMAIN_DEFAULT=https://10.1.2.2:8433
OPENSHIFT_PRIMARY_PROJECT_DEFAULT=jdg-project1
OPENSHIFT_PRIMARY_APP_DEFAULT=jdg-app1
OPENSHIFT_JDG_APP_TEMPLATE=datagrid65-clustered.json

echo "USER: " $OPENSHIFT_PRIMARY_USER_DEFAULT 
echo "PASSWORD: " $OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT 
echo "DOMAIN: " $OPENSHIFT_DOMAIN_DEFAULT 

if [[ ! -z OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT+1 ]] ; then
       echo " PASSWORD IS: ["$OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT"]"
fi

#if [[ ! -z OPENSHIFT_RHSADEMO_USER_PASSWORD_DEFAULT ]] ; then
#	echo "--> Using RHSADEMO password for openshift"
#	OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT=$OPENSHIFT_RHSADEMO_USER_PASSWORD_DEFAULT
#else
#	[[ ! -z OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT ]] && echo "Please set OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT to your openshift password" && exit 1
#fi

OPENSHIFT_DOMAIN=${OPENSHIFT_DOMAIN_DEFAULT}

#OPENSHIFT_PRIMARY_MASTER_DEFAULT=https://master.${OPENSHIFT_DOMAIN_DEFAULT}
#OPENSHIFT_PRIMARY_MASTER_DEFAULT=https://${OPENSHIFT_DOMAIN_DEFAULT}
#OPENSHIFT_PRIMARY_MASTER=$OPENSHIFT_PRIMARY_MASTER_DEFAULT


OPENSHIFT_PRIMARY_USER=${OPENSHIFT_PRIMARY_USER_DEFAULT}
OPENSHIFT_PRIMARY_USER_PASSWORD=${OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT}

#OPENSHIFT_PRIMARY_PROJECT_AMQ_DEFAULT=fuse-amq
#OPENSHIFT_PRIMARY_PROJECT_DEFAULT=${OPENSHIFT_PRIMARY_PROJECT_AMQ_DEFAULT}
OPENSHIFT_PRIMARY_PROJECT=${OPENSHIFT_PRIMARY_PROJECT_DEFAULT}
OPENSHIFT_PRIMARY_APP=${OPENSHIFT_PRIMARY_APPS_DEFAULT}

#OPENSHIFT_APPLICATION_NAME_AMQ_BROKER_DEFAULT=broker
#OPENSHIFT_APPLICATION_NAME_DEFAULT=${OPENSHIFT_APPLICATION_NAME_AMQ_BROKER_DEFAULT}
#OPENSHIFT_APPLICATION_NAME=${OPENSHIFT_APPLICATION_NAME_DEFAULT}

echo "Configuration_______________________________________________"
echo "OPENSHIFT_DOMAIN_DEFAULT                = ${OPENSHIFT_DOMAIN_DEFAULT}"
echo "OPENSHIFT_DOMAIN                        = ${OPENSHIFT_DOMAIN}"
echo "OPENSHIFT_PRIMARY_MASTER_DEFAULT        = ${OPENSHIFT_PRIMARY_MASTER_DEFAULT}"
echo "OPENSHIFT_PRIMARY_MASTER                = ${OPENSHIFT_PRIMARY_MASTER}"
echo "OPENSHIFT_PRIMARY_APP_DEFAULT           = ${OPENSHIFT_PRIMARY_APP_DEFAULT}"
echo "OPENSHIFT_PRIMARY_APP                   = ${OPENSHIFT_PRIMARY_APP}"
echo "OPENSHIFT_PRIMARY_USER_DEFAULT          = ${OPENSHIFT_PRIMARY_USER_DEFAULT}"
echo "OPENSHIFT_PRIMARY_USER                  = ${OPENSHIFT_PRIMARY_USER}"
echo "OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT = ${OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT}" 
echo "OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT = `echo ${OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT} | md5sum` (obfuscated)"
echo "OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT = `echo ${OPENSHIFT_PRIMARY_USER_PASSWORD_DEFAULT} | md5sum` (obfuscated)"
echo "OPENSHIFT_PRIMARY_USER_PASSWORD         = `echo ${OPENSHIFT_PRIMARY_USER_PASSWORD} | md5sum` (obfuscated)"

#echo "OPENSHIFT_PRIMARY_PROJECT_AMQ_DEFAULT   = ${OPENSHIFT_PRIMARY_PROJECT_AMQ_DEFAULT}"
echo "OPENSHIFT_PRIMARY_PROJECT_DEFAULT       = ${OPENSHIFT_PRIMARY_PROJECT_DEFAULT}"
echo "OPENSHIFT_PRIMARY_PROJECT               = ${OPENSHIFT_PRIMARY_PROJECT}"
#echo "OPENSHIFT_APPLICATION_NAME_AMQ_BROKER_DEFAULT = ${OPENSHIFT_APPLICATION_NAME_AMQ_BROKER_DEFAULT}"
#echo "OPENSHIFT_APPLICATION_NAME_DEFAULT      = ${OPENSHIFT_APPLICATION_NAME_DEFAULT}"
echo "OPENSHIFT_JDG_APP_TEMPLATE              = ${OPENSHIFT_JDG_APP_TEMPLATE}"
echo "OPENSHIFT_APPLICATION_NAME              = ${OPENSHIFT_APPLICATION_NAME}"
echo "____________________________________________________________"


