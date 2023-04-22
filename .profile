#!/bin/bash

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PROJECTS=$HOME/projects

#DEVDB
export set BUILD_USER=spud

# Basic repository setup
#export P4USER=$USER
#export P4CLIENT=$USER
#export P4PORT=p4proxy-cj.wl.corpsys.vclk.net:5666
#export P4CLIENTPATH=$PROJECTS/perforce
#export TEMP=$P4CLIENTPATH/tmp

# Software Setup
#export CJ_P4_HOME=$P4CLIENTPATH/cj
export CJ_GIT_HOME=$PROJECTS/git/cj
export CJ_SOFTWARE_HOME=$CJ_GIT_HOME/software
export cj_softwareHome=$CJ_SOFTWARE_HOME
#export cj_javaVersion=jdk1.6.0_25-x86_64
export cj_grailsVersion=1.3.6
# export cj_mvnVersion=3.0.4
export cj_resinVersion=3.1.8
export cj_speedyg_home=$CJ_GIT_HOME/speedyg
export speedyg_software=$cj_speedyg_home/software

# Software Homes
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_ROOT=/Library/Java/JavaVirtualMachines/
export JDK7=$JAVA_ROOT/jdk1.7.0_80.jdk/Contents/Home
export JDK8=$JAVA_ROOT/jdk1.8.0_231.jdk/Contents/Home
export JDK11=$JAVA_ROOT/jdk-11.0.9.jdk/Contents/Home
export JAVA_HOME=$JDK8

export GRAILS_HOME=$CJ_SOFTWARE_HOME/grails/grails-$cj_grailsVersion
#export M2_HOME=$CJ_SOFTWARE_HOME/maven/$cj_mvnVersion
export RESIN_HOME=$CJ_SOFTWARE_HOME/resin/$cj_resinVersion

export DYLD_LIBRARY_PATH=$CJ_SOFTWARE_HOME/software/sqlplus/darwin

# DB
export TNS_ADMIN=$HOME
export DEVDB_HOST=devdb.db.cj.com
export DEVDB_PORT=1521
export DEVDB_SID=DEVDB
export DEVDB_USER=spud  

# MAVEN
export MAVEN_OPTS="-Xmx4086m -Xss512m -XX:ReservedCodeCacheSize=256m"

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# PATH
PATH=.:/usr/local/bin:$HOME/bin:$HOME/software/bin:$CJ_SOFTWARE_HOME/bin:$JAVA_HOME/bin:$PATH:$RESIN_HOME/bin:$GRAILS_HOME/bin:$HOME/software/sbt/bin:$HOME/.npm-packages/bin
