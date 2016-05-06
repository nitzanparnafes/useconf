# useconf


###Manage your USE flags for individual packages in Gentoo with ease
#####What is this program?
With ```useconf``` you can easliy update, edit and remove individual USE flag configuration files that are located in  
```
/etc/portage/package.use/
```
This program will automatically create the conf file so you will only need to add the use flags themselves (which the program can display).  
This program let you edit existing conf files without having to write the whole path to them.  

====

### How to install

##### Dependencies
> app-portage/gentoolkit     (required for one of the options. not mandatory, can work without the package using a different implementation)  

```bash
emerge app-portage/gentoolkit
```

##### Automatic Installation
```
$ git clone https://github.com/pRivat1337/useconf
$ su
# ./install.sh
```
And you're done!
##### Manual Installation
```
$ git clone https://github.com/pRivat1337/useconf
$ su
# mv useconf /usr/bin/        (or whatever folder you want)
# cd /usr/bin
# chown root useconf          (changing file permissions)
# chgrp root useconf
```
##### Uninstalling
```
$ su
# ./install.sh --uninstall
```
### How to use

```
Usage: useconf [OPTIONS] [INPUT]...
Edit useflags for a specific package. [INPUT] == package name

Options:
-o, --override		Overrides existing file
-h, --help		Display this screen and exit
-u, --use		Display available useflags for the package and exit
-l, --list		Print existing package use flag configuration files and exit
-r, --remove		Remove existing package use flag configuration file and exit
```
