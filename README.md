# README: Sysopctl v0.1.0 - Custom Linux Command Script

## **Overview**
Sysopctl is a routine Linux script with command-line aimed to improve system administration potentiality by presenting an integrated collection of tools to monitor, manage services, analyze logs, and to monitor back up files.

This script provides following functions:
1.	To Display system activity and load.
2.	To monitor and manage system services.
3.	To analyze system logs.
4.	To back up system files.

## **Following are the characteristics**
1. **System Information and Monitoring**
a.	Lists running services using `systemctl`.
b.	System load is displayed using `uptime`.
c.	System processes is monitored by using `top`.

2. **Service Management**
1.	Starts and stops custom services.

3. ** Analysis of Log **
1.	Log files can be monitored in real-time.
2.	Reports are generated on errors and warnings.

4. ** Usage of Disk **
1.	Displays usage of disk in a format of human-readable.

5. **Backup Management**
1.	Creates backups of the root directory and stores them in a predefined directory.

## **Following are the requirements**
1.	Linux-based system.
2.	`bash` shell.
3.	Administrative opportunities for various functions (e.g., `sudo crontab`, `systemctl`).
4.	Predefined log file path: `/log/Jenom-log.txt`.
5.	Predefined backup directory: `/Jenom/backup`.

## ** Following are the Usage**
1. Replicate or download the script to the system. 
2. Need to ensure the script has executable permissions:
   ```bash
   chmod +x sysopctl.sh
   ```
3. Run the script:
   ```bash
   sudo ./sysopctl.sh
   ```

### **Key Operations are as follows**
- **Log Analysis:**
  The script monitors, a predefined log file and generates reports on errors and warnings.
  
  ```bash
  LogAnalysis()
  ```

- **System Load:**
  Displays system uptime and load:
  ```bash
  uptime
  ```

- **Service Management:**
  Start and stop services using `systemctl` commands embedded in the script.

- **Backup:**
  Automatically generates compact backups of the root directory:
  ```bash
  tar czf /Jenom/backup/backup_<timestamp>.tar.gz /
  ```

## **Directory Structure**
- **Log file location:** `/log/Jenom-log.txt`
- **Backup directory:** `/Jenom/backup`

## **Potential Errors and Resolutions**
- **Log file not found:** Ensure the log file exists at `/log/Jenom-log.txt`.
- **Permission denied:** Run the script with `sudo` to resolve permission-related issues.
- **Backup directory not found:** The script creates the backup directory if it doesn’t exist.

## **Development and Maintenance**
- **Developed by:** Avichal.
- **Version:** v0.1.0


---

