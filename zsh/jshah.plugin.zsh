# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

export PROJECTS=$HOME/projects

#DEVDB
export set BUILD_USER=spud

# Basic repository setup

# Software Setup
export CJ_GIT_HOME=$PROJECTS/git/cj
export CJ_SOFTWARE_HOME=$CJ_GIT_HOME/software

# Software Homes
# export JAVA_ROOT=/Library/Java/JavaVirtualMachines
# export JDK7=$JAVA_ROOT/jdk1.7.0_80.jdk/Contents/Home
# export JDK8=$JAVA_ROOT/jdk1.8.0_231.jdk/Contents/Home
# export JDK11=$JAVA_ROOT/jdk-11.0.9.jdk/Contents/Home
# export JAVA_HOME=$JDK8

# export GRAILS_HOME=$CJ_SOFTWARE_HOME/grails/grails-$cj_grailsVersion
# export RESIN_HOME=$CJ_SOFTWARE_HOME/resin/$cj_resinVersion

# export DYLD_LIBRARY_PATH=$CJ_SOFTWARE_HOME/software/sqlplus/darwin

# DB
export TNS_ADMIN=$HOME
export DEVDB_HOST=devdb.db.cj.com
export DEVDB_PORT=1521
export DEVDB_SID=DEVDB

# MAVEN
export MAVEN_OPTS="-Xmx4086m -Xss512m -XX:ReservedCodeCacheSize=256m"

#nvm
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# some more ls aliases

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias hg='history | grep '

#services
alias dbstart='nohup VBoxHeadless --startvm "Oracle11g32" &> /dev/null &'
alias dbstop='VBoxManage controlvm Oracle11g32 poweroff'
# alias mdb='~/software/mongo/bin/mongod --dbpath $PROJECTS/data/mongo/product-import/data/ --rest --noprealloc --nssize 1'

#build shortcuts maven 3
alias mci='mvn clean install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias mi='mvn install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias qb='mvn clean install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qqb='mvn      install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qb2='mvn      install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
            
#directory shortcuts
alias main='cd $CJ_GIT_HOME/cjdev/main'

# alias syncmember='nodemon -w member-web/src/main/webapp/ -e html,htm,js,css,jsp,coffee,keys,xml,jsx -x `which copyWebResourcesMember`'
# alias zmemberstart='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-member/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-member -DBUILD_USER=null -DIS_SPEEDYG=true start'
# alias zmemberstop='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-member/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-member -DBUILD_USER=null -DIS_SPEEDYG=true stop'

# alias zintranetstart='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-intranet/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-intranet -DBUILD_USER=null -DIS_SPEEDYG=true start'
# alias zintranetstop='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-intranet/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/main/ztest-container-intranet -DBUILD_USER=null -DIS_SPEEDYG=true stop'

# alias j7='export JAVA_HOME=$JDK7 && export PATH=$JAVA_HOME/bin:$PATH'
# alias j8='export JAVA_HOME=$JDK8 && export PATH=$JAVA_HOME/bin:$PATH'

alias psg='ps aux | grep '
# alias fixintellij='ibus-daemon -rd'