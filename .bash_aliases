#!/bin/bash

# some more ls aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pg='ps aux | grep '
alias hg='history | grep '

#applications
alias p4v='export TMP=$P4CLIENTPATH/tmp; p4v &'

#services
alias dbstart='nohup VBoxHeadless --startvm "Oracle11g32" &> /dev/null &'
alias dbstop='VBoxManage controlvm Oracle11g32 poweroff'
alias mdb='~/software/mongo/bin/mongod --dbpath $PROJECTS/data/mongo/product-import/data/ --rest --noprealloc --nssize 1'

#build shortcuts maven 3
#alias mvn='/home/jshah/projects/perforce/cj/software/maven/3.0.4/bin/mvn'
alias mci='mvn clean install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias mi='mvn install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias qb='mvn clean install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qb2='mvn install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true'
            
#directory shortcuts
alias main='cd $CJ_GIT_HOME/main'
alias product='cd $CJ_GIT_HOME/main/product'
#. $CJ_GIT_HOME/main/product/scripts/aliases

alias syncmember='nodemon -w member-web/src/main/webapp/ -e html,htm,js,css,jsp,coffee,keys,xml,jsx -x `which copyWebResourcesMember`'
alias zmemberstart='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-member/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-member -DBUILD_USER=null -DIS_SPEEDYG=true start'
alias zmemberstop='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-member/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-member -DBUILD_USER=null -DIS_SPEEDYG=true stop'

alias zintranetstart='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-intranet/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/ztest-container-intranet -DBUILD_USER=null -DIS_SPEEDYG=true start'
alias zintranetstop='httpd.sh -conf $CJ_GIT_HOME/cjo/ztest-container-intranet/conf/resin.xml -root-directory $CJ_GIT_HOME/cjo/main/ztest-container-intranet -DBUILD_USER=null -DIS_SPEEDYG=true stop'

#alias dual="/home/jshah/.screenlayout/dual.sh"

alias j7='export JAVA_HOME=$JDK7 && export PATH=$JAVA_HOME/bin:$PATH'
alias j8='export JAVA_HOME=$JDK8 && export PATH=$JAVA_HOME/bin:$PATH'

alias psg='ps aux | grep '
alias fixintellij='ibus-daemon -rd'
