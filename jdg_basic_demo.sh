#!/bin/bash

. ./config.sh

echo "	--> Log into openshift"
oc login ${OPENSHIFT_PRIMARY_MASTER} --username=${OPENSHIFT_PRIMARY_USER} --password=${OPENSHIFT_PRIMARY_USER_PASSWORD} --insecure-skip-tls-verify=false
! [ $? == 0 ] && echo "FAILED" && exit 1

echo "	--> Create a new project: " ${OPENSHIFT_PRIMARY_PROJECT}
oc get projects | grep ${OPENSHIFT_PRIMARY_PROJECT} | wc -l
if [ `oc get projects | grep ${OPENSHIFT_PRIMARY_PROJECT} | wc -l` == 0 ]; then
   oc project ${OPENSHIFT_PRIMARY_PROJECT}
   ! [ $? == 0 ] && oc new-project ${OPENSHIFT_PRIMARY_PROJECT}
   ! [ $? == 0 ] && echo "FAILED" && exit 1
else
   echo "project already exists"
fi

# Check to see if the template is already loaded, if not load it
if [ `oc describe -f ${OPENSHIFT_JDG_APP_TEMPLATE} | wc -l` == 0 ]; then
   oc create -f ./${OPENSHIFT_JDG_APP_TEMPLATE}
else
   echo "TEMPLATE " ${OPENSHIFT_JDG_APP_TEMPLATE}  "is already loaded"
fi


# remove the ".json" extenison from the template name
TEMPLATE=$(echo ${OPENSHIFT_JDG_APP_TEMPLATE} | sed -e "s/.json//")

oc process ${TEMPLATE} -v UNIQUEID=1,JGROUPS_CLUSTER_PASSWORD=p@ssw0rd | oc create -f -

#oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)

#oc policy add-role-to-user view system:serviceaccount:$(oc project -q):eap-service-account -n $(oc project -q)

