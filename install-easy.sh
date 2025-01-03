echo "starting "$0
echo "checking environment"
read -p "Check? [Y/n] " l1
case $l1 in
[Yy]) echo "continue"

sys=$(uname)
usr=$(whoami)
if [ "$sys" == "Linux" ]
then
  echo "system: "$sys", user: "$usr
  echo "starting"
  python3 initcomp/mscript.py
else
  echo "system $sys is not compatible:"
fi
;;
*) exit ;;
esac 
