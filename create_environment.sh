 #!/bin/bash
 
start="submission_reminder_app"
mkdir $start
mkdir $start/app
mkdir $start/modules
mkdir $start/assets
mkdir $start/config
touch $start/startup.sh
chmod +x $start/startup.sh
touch $start/app/reminder.sh
chmod +x $start/app/reminder.sh
touch $start/modules/functions.sh
chmod +x $start/modules/functions.sh
touch $start/assets/submissions.txt
touch $start/config/config.env
cp ./submissions.txt $start/assets/submissions.txt
echo 'Zya, Shell Navigation, submitted
Alain, Shell Navigation, submitted
Iteka, Shell Navigation, submitted
Teddy, Shell Navigation, not submitted
Keran,Shell Navigation, not submitted'>>$start/assets/submissions.txt
cp ./config.env $start/config/config.env
cp ./functions.sh $start/modules/functions.sh
cp ./reminder.sh $start/app/reminder.sh
echo '#!/bin/bash

./app/reminder.sh
' > $start/startup.sh
echo 'work done'
