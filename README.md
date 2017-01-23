# jdg6-ocp-demo
Example demonstrating automated JDG app install on OCP 3.3 using a custom template. REST api used to demo cache. I used the CDK 3.3 for my work.

Thanks To: Micheal Epley, Trevor Xiao for some of the ideas demostrated here.

###config.sh
general configuration of the environment. Used by other scripts. You can modify the project and app names here if you like.

###clean.sh
clean up, remove all traces of project from OpenShift. Currently no files on disk are removed

###"jdg-basic-demo.sh"
Creates a new project, adds a custom template to OCP, creates a new app using the template

###loadrest.sh
load a couple values into the cache using the REST cache interface

loadrest.sh {cache} {hostip:port}
For openshift the url will be the generated route
default cache is "default"
default host:port is "127.0.0.1:8081"

queryrest.sh {cache} {host:port}
Query Cache 

#Things To Demo
You can

*Add some data to the cache

*Query the Cache

*Hit the provided URL which takes you to a Welcome web page 

*Use the console (or commnd line to scale) up to 2 instances

	* be sure to check the logs to see the data rebalance messages

*....

