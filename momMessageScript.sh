#!/bin/bash
#OPTIONAL send alert to myself using www.nimrod-messenger.io
#curl -X POST -H "Content-Type: application/json" -d '{
#  "api_key": "YOUR-API-KEY-FROM-NIMROD",
#  "message": "Mom script activated..."
#}' "https://www.nimrod-messenger.io/api/v1/message"

#sleep for a random amount of time to not send messages at the exact same time
#so she won't find out
sleep $[ ( $RANDOM % 5400 )  + 1 ]s #sleep for random amount inside of 1.5 hours

#Array of random messages to choose from. Feel free to expand
arr[0]="Hey, just checking in"
arr[1]="Hey mom, how are things?"
arr[2]="Hey"
arr[3]="Hey, how are you?"
arr[4]="Hey, everything\s okay with me, just letting you know"
arr[5]="What\'s up"
arr[6]="Hey just checking in, all is good"
rand=$[$RANDOM % ${#arr[@]}]
echo ${arr[$rand]}
message=${arr[$rand]}
output=`node_modules/.bin/messer --command="m \"Yourmoms Fullnamehere\" $message"`
echo $output >> momScript.log


#### FIXME put this into a complimentary bash script
# Send an alert to myself when the script completed and the message got sent
#if [ -n "$output"]
#then
#curl -X POST -H "Content-Type: application/json" -d '{
#"api_key": "YOUR-API-KEY-FROM-NIMROD",
#"message": "Message to mom sent!"
#}' "https://www.nimrod-messenger.io/api/v1/message"
#else
#curl -X POST -H "Content-Type: application/json" -d '{
#"api_key": "YOUR-API-KEY-FROM-NIMROD",
#"message": "Message to mom failed to send!"
#}' "https://www.nimrod-messenger.io/api/v1/message"
#fi
