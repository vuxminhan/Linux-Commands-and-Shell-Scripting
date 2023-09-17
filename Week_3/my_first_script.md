```
#test run a script
theia@theia-vuxminhan:/home/project$ ls -l greet.sh
-rw-r--r-- 1 theia users 518 Sep 16 12:05 greet.sh
theia@theia-vuxminhan:/home/project$ bash greet.sh
Enter your name :alex
Welcome alex
Congratulations! You just created and ran your first shell script using Bash on IBM Skills Network
theia@theia-vuxminhan:/home/project$ which bash
/bin/bash
theia@theia-vuxminhan:/home/project$ chmod +x greet.sh
theia@theia-vuxminhan:/home/project$ ls -l greet.sh
-rwxr-xr-x 1 theia users 531 Sep 16 12:07 greet.sh
theia@theia-vuxminhan:/home/project$ chmod -x greet.sh
theia@theia-vuxminhan:/home/project$ ls -l greet.sh
-rw-r--r-- 1 theia users 531 Sep 16 12:07 greet.sh
theia@theia-vuxminhan:/home/project$ chmod u+x greet.sh
theia@theia-vuxminhan:/home/project$ ls -l greet.sh
-rwxr--r-- 1 theia users 531 Sep 16 12:07 greet.sh
theia@theia-vuxminhan:/home/project$ ./greet.sh
Enter your name :alex
Welcome alex
Congratulations! You just created and ran your first shell script using Bash on IBM Skills Network

#system-info.sh
theia@theia-vuxminhan:/home/project$ echo '#!/bin/bash' > system_info.sh
theia@theia-vuxminhan:/home/project$ echo '# print the current date time' >> system_info.sh
theia@theia-vuxminhan:/home/project$ echo 'date' >> system_info.sh
theia@theia-vuxminhan:/home/project$ echo '# print the disk free statistics' >> system_info.sh
theia@theia-vuxminhan:/home/project$ echo 'df -h' >> system_info.sh
theia@theia-vuxminhan:/home/project$ chmod u+x system_info.sh
theia@theia-vuxminhan:/home/project$ ./system_info.sh
#! /bin/bash
# print the current date time
Fri Sep 16 10:00:00 UTC 2023
# print the disk free statistics
Filesystem      Size  Used Avail Use% Mounted on
overlay         100G   20G   81G  20% /
tmpfs           3.9G     0  3.9G   0% /dev
tmpfs           3.9G     0  3.9G   0% /sys/fs/cgroup
shm              64M     0   64M   0% /dev/shm
tmpfs           3.9G     0  3.9G   0% /proc/acpi
tmpfs           3.9G     0  3.9G   0% /sys/firmware

#create sum.sh
theia@theia-vuxminhan:/home/project$ echo '#!/bin/bash' > sum.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "Welcome to the Sum Calculator"' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "============================="' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '# Prompt the user to enter the first number' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'read -p "Enter the first number: " num1' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '# Prompt the user to enter the second number' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'read -p "Enter the second number: " num2' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '# Check if the input is numeric' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'if [[ ! $num1 =~ ^[0-9]+(\.[0-9]+)?$ || ! $num2 =~ ^[0-9]+(\.[0-9]+)?$ ]]; then' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '    echo "Invalid input. Please enter valid numbers."' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'else' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '    # Perform the addition' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '    sum=$(echo "$num1 + $num2" | bc)' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '    # Print the result' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo '    echo "The sum of $num1 and $num2 is: $sum"' >> sum.sh
theia@theia-vuxminhan:/home/project$ echo 'fi' >> sum.sh
theia@theia-vuxminhan:/home/project$ chmod u+x sum.sh
theia@theia-vuxminhan:/home/project$ ./sum.sh
Welcome to the Sum Calculator
=============================
Enter the first number: 5
Enter the second number: 3
The sum of 5 and 3 is: 8

#create division.sh
theia@theia-vuxminhan:/home/project$ echo '#!/bin/bash' > division.sh
theia@theia-vuxminhan:/home/project$ chmod u+x division.sh
theia@theia-vuxminhan:/home/project$ ls -l division.sh
-rwxr--r-- 1 theia users 335 Sep 17 10:00 division.sh
theia@theia-vuxminhan:/home/project$ ./division.sh
Welcome to the Division Calculator
=================================
Enter the dividend: 10
Enter the divisor: 2
The result of 10 divided by 2 is: 5.00
theia@theia-vuxminhan:/home/project$ ./division.sh
Welcome to the Division Calculator
=================================
Enter the dividend: 8
Enter the divisor: 0
Error: Division by zero is not allowed.

#create csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo '#!/bin/bash' > csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'csv_file="./arrays_table.csv"' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'column_0=($(cut -d "," -f 1 $csv_file))' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'column_1=($(cut -d "," -f 2 $csv_file))' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'column_2=($(cut -d "," -f 3 $csv_file))' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "Displaying the first column:"' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "${column_0[@]}"' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'column_3=("column_3")' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'nlines=$(cat $csv_file | wc -l)' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "There are $nlines lines in the file"' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'for ((i=1; i<=$nlines; i++)); do' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo '  column_3[$i]=$((column_2[$i] - column_1[$i]))' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'done' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "${column_3[@]}"' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'echo "${column_3[0]}" > column_3.txt' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'for ((i=1; i<$nlines; i++)); do' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo '  echo "${column_3[$i]}" >> column_3.txt' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'done' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ echo 'paste -d "," $csv_file column_3.txt > report.csv' >> csv_processing.sh
theia@theia-vuxminhan:/home/project$ chmod u+x csv_processing.sh
theia@theia-vuxminhan:/home/project$ ./csv_processing.sh
theia@theia-vuxminhan:/home/project$ cat report.csv
theia@theia-vuxminhan:/home/project$ cat column_3.txt
column_3
1
1
1
1
```