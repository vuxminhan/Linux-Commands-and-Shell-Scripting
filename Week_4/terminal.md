# Hands-on Lab: Historical Weather Forecast Comparison to Actuals

## Exercise 1
```bash
theia@theia-vuxminhan:/home/project$ touch rx_poc.log
theia@theia-vuxminhan:/home/project$ echo -e "year\tmonth\tday\thour\tobs_tmp\tfc_temp" > rx_poc.log

## Exercise 2
theia@theia-vuxminhan:/home/project$ touch rx_poc.sh
theia@theia-vuxminhan:/home/project$ chmod u+x rx_poc.sh

## Exercise 3
theia@theia-vuxminhan:/home/project$ grep °C $weather_report > temperatures.txt
theia@theia-vuxminhan:/home/project$ obs_tmp=$(cat -A temperatures.txt | head -1 | cut -d "+" -f2 | cut -d "^" -f1 )
theia@theia-vuxminhan:/home/project$ echo "observed temperature = $obs_tmp"
theia@theia-vuxminhan:/home/project$ fc_temp=$(cat -A temperatures.txt | head -3 | tail -1 | cut -d "+" -f2 | cut -d "(" -f1 | cut -d "^" -f1)
theia@theia-vuxminhan:/home/project$ hour=$(TZ='Morocco/Casablanca' date -u +%H)
theia@theia-vuxminhan:/home/project$ day=$(TZ='Morocco/Casablanca' date -u +%d)
theia@theia-vuxminhan:/home/project$ month=$(TZ='Morocco/Casablanca' date +%m)
theia@theia-vuxminhan:/home/project$ year=$(TZ='Morocco/Casablanca' date +%Y)
theia@theia-vuxminhan:/home/project$ record=$(echo -e "$year\t$month\t$day\t$obs_tmp\t$fc_temp")
theia@theia-vuxminhan:/home/project$ echo $record >> rx_poc.log

## Exercise 4
theia@theia-vuxminhan:/home/project$ date
theia@theia-vuxminhan:/home/project$ date -u
theia@theia-vuxminhan:/home/project$ crontab -e
theia@theia-vuxminhan:/home/project$ crontab -l

## Exercise 5
theia@theia-vuxminhan:/home/project$ echo -e "year\tmonth\tday\tobs_tmp\tfc_temp\taccuracy\taccuracy_range" > historical_fc_accuracy.tsv
theia@theia-vuxminhan:/home/project$ touch fc_accuracy.sh
#!/bin/bash

yesterday_fc=$(tail -2 rx_poc.log | head -1 | cut -d " " -f5)
today_temp=$(tail -1 rx_poc.log | cut -d " " -f4)
accuracy=$(($yesterday_fc - $today_temp))

echo "accuracy is $accuracy"

if [ -1 -le $accuracy ] && [ $accuracy -le 1 ]; then
    accuracy_range=excellent
elif [ -2 -le $accuracy ] && [ $accuracy -le 2 ]; then
    accuracy_range=good
elif [ -3 -le $accuracy ] && [ $accuracy -le 3 ]; then
    accuracy_range=fair
else
    accuracy_range=poor
fi

echo "Forecast accuracy is $accuracy_range"

row=$(tail -1 rx_poc.log)
year=$(echo $row | cut -d " " -f1)
month=$(echo $row | cut -d " " -f2)
day=$(echo $row | cut -d " " -f3)
echo -e "$year\t$month\t$day\t$today_temp\t$yesterday_fc\t$accuracy\t$accuracy_range" >> historical_fc_accuracy.tsv

## Exercise 6
theia@theia-vuxminhan:/home/project$ wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-LX0117EN-Coursera/labs/synthetic_historical_fc_accuracy.tsv
theia@theia-vuxminhan:/home/project$ touch command_e6.sh
#!/bin/bash

echo $(tail -7 synthetic_historical_fc_accuracy.tsv  | cut -f6) > scratch.txt

week_fc=($(echo $(cat scratch.txt)))

# validate result:
for i in {0..6}; do
    echo ${week_fc[$i]}
done

for i in {0..6}; do
  if [[ ${week_fc[$i]} < 0 ]]; then
    week_fc[$i]=$(((-1)*week_fc[$i]))
  fi
  # validate result:
  echo ${week_fc[$i]}
done

minimum=${week_fc[1]}
maximum=${week_fc[1]}
for item in ${week_fc[@]}; do
   if [[ $minimum > $item ]]; then
     minimum=$item
   fi
   if [[ $maximum < $item ]]; then
     maximum=$item
   fi
done

echo "minimum absolute error = $minimum"
echo "maximum absolute error = $maximum"

## Task 15 

theia@theia-vuxminhan:/home/project$ chmod u+x backup.sh
theia@theia-vuxminhan:/home/project$ ls -l backup.sh

#Task 16

theia@theia-vuxminhan:/home/project$ wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/Final%20Project/important-documents.zip
theia@theia-vuxminhan:/home/project$ unzip -DDo important-documents.zip
theia@theia-vuxminhan:/home/project$ touch important-documents/*
theia@theia-vuxminhan:/home/project$ ./backup.sh important-documents .

#Task 17
theia@theia-vuxminhan:/home/project$ sudo cp backup.sh /usr/local/bin/
theia@theia-vuxminhan:/home/project$ crontab -e
theia@theia-vuxminhan:/home/project$ crontab -l
theia@theia-vuxminhan:/home/project$ sudo service cron start
theia@theia-vuxminhan:/home/project$ ls -a
