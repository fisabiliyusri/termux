#!/data/data/com.termux/files/usr/bin/env bash

RED="\e[91m"
YELLOW="\e[93m"
GREEN="\e[92m"
DEFAULT="\e[39m"

user="xshin"
pass="xshin"

handle_ctrl_c() {

        pkill com.termux

        echo -e "\n\n                    ERROR    :$RED you can't exit!$DEFAULT"
        echo -e "\n               Message,$YELLOW Press Enter to back Login$DEFAULT"
        echo -e "              $YELLOW or Enter username / password to
               continue.$DEFAULT"

}

trap "handle_ctrl_c" 2

while true; do

    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e ""
    echo -e "                        Termux Login"
    echo -e ""
    read -p "                    username : " username

    if [[ "$username" == "$user" ]]; then

        echo -e "                    password :"
        read -r -s password

        if [[ "$password" == "$pass" ]]; then
           
            echo -e ""
            echo -e "                    status   :$GREEN Success Login.$DEFAULT"
            sleep 2s
            clear
            break

        else

            echo -e ""
            echo -e "                    status   :$RED Wrong Password.$DEFAULT"
            sleep 2s
            clear

        fi

    else

        echo -e ""
        echo -e "                    status   :$YELLOW Wrong Username.$DEFAULT"
        sleep 2s
        clear

    fi

done
