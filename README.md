# README: Sysopctl v0.1.0 - Custom Linux Command Script

## **Overview**
Sysopctl is a custom Linux command-line script designed to enhance system administration capabilities by providing an integrated suite of tools for monitoring, managing services, analyzing logs, and backing up files.

This script provides functionalities such as:
- Displaying system activity and load.
- Managing and monitoring system services.
- Analyzing system logs.
- Backing up system files.

## **Features**
1. **System Information and Monitoring**
   - Lists running services using `systemctl`.
   - Displays system load using `uptime`.
   - Monitors system processes using `top`.

2. **Service Management**
   - Starts and stops custom services.

3. **Log Analysis**
   - Monitors log files in real-time.
   - Generates reports on errors and warnings.

4. **Disk Usage**
   - Displays disk usage in a human-readable format.

5. **Backup Management**
   - Creates backups of the root directory and stores them in a predefined directory.

## **Requirements**
- Linux-based system.
- `bash` shell.
- Administrative privileges for certain operations (e.g., `sudo crontab`, `systemctl`).
- Predefined log file path: `/log/Jenom-log.txt`.
- Predefined backup directory: `/Jenom/backup`.

## **Usage**
1. Clone or download the script to your system.
2. Ensure the script has executable permissions:
   ```bash
   chmod +x sysopctl.sh
   ```
3. Run the script:
   ```bash
   sudo ./sysopctl.sh
   ```

### **Key Operations**
- **Log Analysis:**
  The script monitors a predefined log file and generates reports on errors and warnings.
  
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
  Automatically creates compressed backups of the root directory:
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
- **Developed by:** Jenom.
- **Version:** v0.1.0

## **Disclaimer**
This script is provided "as is" without any warranty. Use it at your own risk. Ensure you have backups of important files before running administrative operations.

---

