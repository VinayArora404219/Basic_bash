mod=`stat -c %z $1 | awk '{ print $2 }' | cut -d":" -f1,2`
while true
do
sleep 60
mod2=`stat -c %z $1 | awk '{ print $2 }' | cut -d":" -f1,2`
if [ $mod = $mod2 ]
then
#No change in modified time
echo "No Change"
else
echo "File Was Modified"
mod=`stat -c %z $1 | awk '{ print $2 }' | cut -d":" -f1,2`
fi
done
