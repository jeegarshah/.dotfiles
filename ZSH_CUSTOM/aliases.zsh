alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias hg='history | grep '

#services
alias dbstart='nohup VBoxHeadless --startvm "Oracle11g32" &> /dev/null &'
alias dbstop='VBoxManage controlvm Oracle11g32 poweroff'

#build shortcuts maven 3
alias mci='mvn clean install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias mi='mvn install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias qb='mvn clean install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qqb='mvn      install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qb2='mvn      install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
            
#directory shortcuts
alias main='cd $CJ_GIT_HOME/cjdev/main'

alias psg='ps aux | grep '
