#!/bin/bash
#Guss the hacking libary installer


#printer stuff
BAR1 = ¨================================================================================================================================="
BAR2 = "---------------------------------------------------------------------------------------------------------------------------------"
ENDL = "\n"
MARGIN = "\t\t\t\t\t\t\t\t\t\t"
SPACE = "\n\n\n"
a = "GUSS"
b = "V1.0.3"
a = "B7d2"

pframe (){
printf "%s%s%s%s%s%s%s%s%s%s%s%s%s" "$BAR1" "$SPACE" "$MARGIN" "$1" "$ENDL" "$MARGIN" "$2" "$ENDL" "$MARGIN" "$3" "$ENDL" "$SPACE" "$BAR1"
}

iframe (){
printf "%s%s%s%s%s%s%s%s%s%s%s%s%s%s" "$BAR1" "$SPACE" "$MARGIN" "$1" "$ENDL" "$BAR2" "$MARGIN" "$2" "$ENDL" "$MARGIN" "$3" "$ENDL" "$SPACE" "$BAR1"
}

prompt (){
printf ">"
}




#CMD functions

Install (){
iframe "INSTALL" "Enter Pakage ID" "To Begin Setup."
prompt
read $IN
ETC=`cat /guss/md/$IN.txt`
iframe "INSTALL" $ETC "Install (y/n)"
prompt
read RUN
if [[ $RUN =~ "y" ]]; then
    chmod +x $IN
    (cd /guss/scripts; xterm -fullscreen -hold -e ./$ID
    echo "Done."    
}

list (){
ETC=`cat /guss/indexc.txt`
iframe "LIST" $ETC "Slect Catagory"
prompt
read $IN

case $IN in
a)
  ETC=`cat /guss/i/indexGEN.txt`
  ;;
b)
  ETC=`cat /guss/i/indexFOR.txt`
  ;;
c)
  ETC=`cat /guss/i/indexPWN.txt`
  ;;
d)
  ETC=`cat /guss/i/indexRE.txt`
  ;;
e)
  ETC=`cat /guss/i/indexCRY.txt`
  ;;
f)
  ETC=`cat /guss/i/indexCRACK.txt`
  ;;
g)
  ETC=`cat /guss/i/indexPRO.txt`
  ;;
h)
  ETC=`cat /guss/i/indexWEB.txt`
  ;;
*)
  echo "GUSS HAS HAD A STONK"
  while true; do
  #xterm-hold -e ./guss.sh
  cat /guss/blobers.txt
  done
  ;;
esac
iframe "LIST" $ETC "Press Any Key To Return"
prompt
read $IN
}



show (){
iframe "SHOW" "Enter Pakage ID" "To Show."
prompt
read $IN
ETC=`cat /guss/scripts/$IN.txt`
iframe "SHOW" $ETC "Press Any Key To Return"
prompt
read $IN
}


help (){
ETC='cat /guss/help.txt'
iframe "HELP" $ETC
iframe "SHOW" $ETC "Press Any Key To Return"
prompt
read $IN
}


#main
cat /guss/blobers.txt

IN = ""

while true; do
pframe $a $b $c
prompt
read CMD
case $CMD in
instal)
  install
  ;;
list)
  list
  ;;
show)
  show
  ;;
help)
  help
  ;;
fix)
  fix
  ;;
*)
  clear
  ;;
esac
clear
$CMD = ""
$IN = ""
done
