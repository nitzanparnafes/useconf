#!/bin/bash


main() {

checkifroot
getdistro

if [ ! $DISTRO  == "Gentoo" ]; then
   echo "Unsupported distro."
   echo "exiting"
fi

if [ "$1" == "-u" ] || [ "$1" == "--uninstall" ]; then
   remove
elif [ ! -z $1 ]; then
   echo "Invalid argument!"
   echo "exiting.."
   exit 0
else
   install
fi
}   

install() {
   chown root useconf
   chgrp root useconf
   chmod 755 useconf
   echo "Changing file permissions..."
   mv useconf /usr/bin/useconf
   echo "Moving file to installation directory..."
   echo "Done!"
   exit 0

}

remove() {
   echo "Removing file..."
   rm /usr/bin/useconf
   echo "Done!"
   exit 0
}

checkifroot() {
   if [[ `echo $EUID` -ne 0 ]]; then
      echo ""
      echo "This script must be run as root!!"
      echo ""
      exit 0
   fi
}

getinput() {
      if [ "$1" == "-u" ] || [ "$1" == "--uninstall" ]; then
      REMOVE=true   
   fi
   if [ ! -z $1 ]; then
      echo "Invalid argument!"
      echo "exiting.."
      exit 0
   fi
}

getdistro() {
   DISTRO="$(awk -F 'NAME=' '/^NAME=/ {printf $2}' /etc/*ease)"
   DISTRO=${distro//\"}
}   

main "$@"
