#!/bin/bash
#custom command to enhance system administration capabilities
echo 'date'
echo Dear User, What is your name\?
read name
echo Glad to meet you, $name
sysopctl="This is Sysopctl v0.1.0 command application"
echo $sysopctl
service=" a Linux Custom Command Application to enhance system administration capabilities"
echo "This is $service"
developed=' "Developed and maintained by Jenom"
echo $developed
sudo crontab -e
# path to the log file
logfile="/log/Jenom-log.txt"

# modification time of the log file
modification_time=$(stat -c %Y "$logfile")

LogAnalysis() {
echo "***Log Analysis Report***"

# counting errors
 errorscount=$(grep -c -Ei "Error|failed" "$logfile")

# counting warnings
 warning=$(grep -c -Ei "Warning" "$logfile") 


# printing final analysis report 
      echo "Log file name: $(basename "$log_file")"
      echo "Total lines processed: $(wc -l < "$log_file")"
      echo "Total error: $errorscount"
      echo "Total Warnings: $warning"
}
#***************************

echo "System executing •	List of Running Services:    •	View System Load:"

#1... Display processor activity of system
echo "executing •	List of Running Services:"
sysopctl=top
$sysopctl --v
$sysopctl
sleep 1

#Display processor activity of system
echo "executing •	View System Load:"
sysopctl=uptime
$sysopctl --v
$sysopctl
sleep 1  
done

echo "System executing •	Manage System Services     •	Check Disk Usage:"

#2... Start myservice
sysopctl=systemctl
$sysopctl start myservice.service
echo "Service started"
sleep 1  
done
# Stop myservice
sysopctl=systemctl
$sysopctl stop myservice.service
echo "Service stoped"
sleep 1  
done

# Start Check Disk Usage
echo "Check Disk Usage"
sysopctl=df
$sysopctl -h
sleep 1  
done


echo "•	Monitor System Processes:   •	Analyze System Logs:     •	Backup System Files:"

#3...Monitor System Processes
echo "executing •	Monitor System Processes:"
sysopctl=top
$sysopctl --v
$sysopctl -U
sleep 1  
done

#Analyze System Log
echo "executing •	Analyze System Logs::"
# Main loop to monitor the log file
echo "Monitoring log file: $logfile"
while true; do

    # Checking if the log file exists
    if [ ! -f "$logfile" ]; then
        echo "Error: Log file '$logfile' not found."
        exit 1
    fi

    # Checking if the log file is readable
    if [ ! -r "$logfile" ]; then
        echo "Error: Log file is not readable."
        return 1
    fi
    # Check if the file has been modified by comparing the modification timestamps
    current_moddification_time=$(stat -c %Y "$logfile")
    if [ $current_modification_time -gt $modification_time ]; then
        clear  
        # Clearing the screen and displaying the last 10 lines of the log file
        tail -n 10 "$logfile"
        LogAnalysis
        # updating the timestamps
        modification_time=$current_modification_time
    fi
        # delay of 1 second before checking again
    sleep 1  
done

# Do all the backing up here...
backupdir="/Jenom/backup"

# Create the backup directory if it doesn't exist
mkdir -p $backupdir

# Archive the work directory and compress it
timestamp=$(date +'%Y%m%d_%H%M%S')
backupfilename="backup_${timestamp}.tar.gz"

tar czf "${backupdir}/${backupfilename}" /

echo "Backup created: ${backupdir}/${backupfilename}"
sleep 1  
done

reboot