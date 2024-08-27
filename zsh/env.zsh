
export PROJECTS=$HOME/projects

#DEVDB
export set BUILD_USER=spud
# DB
export TNS_ADMIN=$HOME
export DEVDB_HOST=devdb.db.cj.com
export DEVDB_PORT=1521
export DEVDB_SID=DEVDB

# Software Setup
export CJ_GIT_HOME=$PROJECTS/git/cj
export CJ_SOFTWARE_HOME=$CJ_GIT_HOME/software

# MAVEN
export MAVEN_OPTS="-Xmx4086m -Xss512m -XX:ReservedCodeCacheSize=256m"
