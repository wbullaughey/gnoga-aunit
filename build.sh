export OPTION=$1
source ~/.bash_profile
echo PATH $PATH

if [ $OPTION = install ]; then
    echo make uninstall
fi
echo make $OPTION
