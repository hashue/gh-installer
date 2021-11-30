#!/usr/bin/env bash


run_script(){
echo "
###############################################################
# OS:${OS}
###############################################################
"
sh ./scripts/${OS}.sh
}

case $(uname -s) in
    Darwin*)
        export OS="MacOS"
        ;;
    Linux*)
        if [[ -f /etc/os-release ]]; then
            source /etc/os-release
            case $ID in
                ubuntu ) export OS="Ubuntu";;
                arch   ) export OS="Arch";;
            esac
        fi
esac


run_script
