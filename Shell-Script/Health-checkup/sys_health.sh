#!/bin/bash

# System Health Monitoring Script
# Author: Pratik
# Purpose: Monitor disk, memory, CPU, running services and send daily report

LOG_FILE="/var/log/sys_health.log"
EMAIL="Pratik.gitlab@gmail.com"
REPORT="/tmp/sys_health_report.txt"

check_disk_usage() {
    echo -e "\n=== Disk Usage ==="
    df -h
}

monitor_services() {
    echo -e "\n=== Running Services ==="
    systemctl list-units --type=service --state=running | head -20
}

check_memory_usage() {
    echo -e "\n=== Memory Usage (MB) ==="
    free -m
}

check_cpu_usage() {
    echo -e "\n=== CPU Usage ==="
    top -bn1 | grep "Cpu"
}

send_report() {
    echo "Generating system health report..."

    {
        echo "============================="
        echo "   System Health Report"
        echo "============================="
        echo "Date: $(date)"
        check_disk_usage
        monitor_services
        check_memory_usage
        check_cpu_usage
    } > "$REPORT"

    # Send report via mail
    if command -v mail >/dev/null 2>&1; then
        mail -s "System Health Report - $(hostname)" "$EMAIL" < "$REPORT"
        echo "Report sent to $EMAIL"
    else
        echo "⚠️ 'mail' command not found. Please install mailutils or postfix."
    fi
}

# Interactive Menu
while true; do
    clear
    echo "============================="
    echo " System Health Check Menu"
    echo "============================="
    echo "1. Check Disk Usage"
    echo "2. Monitor Running Services"
    echo "3. Assess Memory Usage"
    echo "4. Evaluate CPU Usage"
    echo "5. Send Comprehensive Report"
    echo "6. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) check_disk_usage | tee -a "$LOG_FILE" ;;
        2) monitor_services | tee -a "$LOG_FILE" ;;
        3) check_memory_usage | tee -a "$LOG_FILE" ;;
        4) check_cpu_usage | tee -a "$LOG_FILE" ;;
        5) send_report ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac

    echo "Press Enter to continue..."
    read
done
