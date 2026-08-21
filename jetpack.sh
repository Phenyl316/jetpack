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

echo "Shell (Capabilities) : "
ShellCap=$(getcap -r / 2>/dev/null | grep setuid | grep -Ff ./Dependencies/ShellCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
echo "$ShellCap"
echo " "

echo "Reverse Shell (Capabilities) : "
RevShellCap=$(getcap -r / 2>/dev/null | grep setuid | grep -Ff ./Dependencies/RevShellCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
echo "$RevShellCap"
echo " "

echo "File Read (Capabilities) : "
FileReadCap=$(getcap -r / 2>/dev/null | grep dac_override | grep -Ff ./Dependencies/FileReadCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
echo "$FileReadCap"
echo " "

echo "File Write (Capabilities) : "
FileWriteCap=$(getcap -r / 2>/dev/null | grep dac_override | grep -Ff ./Dependencies/FileWriteCap.txt | awk -F' = ' '{print $1}' | awk '{print $1}')
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
    echo "1) Root Shell"
    echo "2) Reverse Shell"
    echo "3) File Read"
    echo "4) File Write"
    echo "5) Quit"
    echo " "    
    read -p "Technique Choice : " choix

    case "$choix" in
       
            
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
        5)
            echo "Quit"
            exit 0
            ;;
        *)
            echo "Invalid Choice, Restart"
            ;;
    esac
done
