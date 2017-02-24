# Variables export section
###########################################################################
#export MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=512m"
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
#export M2_HOME=/usr/local/maven
#export PATH=/usr/local/bin:${M2_HOME}/bin:${PATH}

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export M3_HOME=/Users/v_slo/Applications/apache-maven-3.3.9/bin
export PATH=/usr/local/bin:${M3_HOME}:${PATH}

alias tw="open -a TextWrangler"


###################### CQ5  ######################
alias aut="curl -u admin:admin -d 'apply=true&action=ajaxConfigManager&wcmfilter.mode=edit&propertylist=wcmfilter.mode&submit=Save' http://localhost:4502/system/console/configMgr/com.day.cq.wcm.core.WCMRequestFilter"
alias pub="curl -u admin:admin -d 'apply=true&action=ajaxConfigManager&wcmfilter.mode=disabled&propertylist=wcmfilter.mode&submit=Save' http://localhost:4502/system/console/configMgr/com.day.cq.wcm.core.WCMRequestFilter"

alias cq="cd /Users/developer/cq5"

###########################################################################
# Functions Definitions
###########################################################################

function build()
{
 cd /Users/developer/project/build
 mvn clean install -DskipTests
}

function startcq()
{
  ps -ef | grep cq | awk '{print $2 }' | xargs kill -9
  cd /Users/developer/cq5/crx-quickstart/bin
  ./start > /dev/null 2>&1
}

function stopcq()
{
  ps -ef | grep cq | awk '{print $2 }' | xargs kill -9
}
