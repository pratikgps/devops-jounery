# 🖥️ System Health Monitoring Script  

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)  
[![Automated with Cron](https://img.shields.io/badge/Automated-Cron%20Job-blue.svg)](https://en.wikipedia.org/wiki/Cron)  
[![DevOps Journey](https://img.shields.io/badge/DevOps-LearnInPublic-success)](https://linkedin.com)  

A **lightweight Bash script** that monitors your server’s health and sends a **daily system report via email**.  
Perfect for Linux admins, DevOps learners, and self-hosted servers who want **proactive monitoring**.  

---

## ✨ Features
- ✅ Check **Disk Usage** (`df -h`)  
- ✅ Monitor **Running Services** (`systemctl list-units`)  
- ✅ View **Memory Usage** (`free -m`)  
- ✅ Track **CPU Usage** (`top -bn1`)  
- ✅ Generate and email a **system health report**  
- ✅ Run interactively (menu-driven) or automated with cron  

---

## 📂 Project Files
```
sys_health.sh   # Main Bash script
README.md       # Documentation
```

---

## ⚙️ Requirements
- Linux system (Ubuntu/Debian recommended) 🐧  
- Install `mailutils` for email functionality:  
  ```bash
  sudo apt update
  sudo apt install -y mailutils
  ```
- Update your email address inside the script:  
  ```bash
  EMAIL="Pratik.gitlab@gmail.com"
  ```

---

## 🚀 Usage

### 1️⃣ Make the script executable
```bash
chmod +x sys_health.sh
```

### 2️⃣ Run interactively (menu mode)
```bash
./sys_health.sh
```
Menu will appear:
```
1. Check Disk Usage
2. Monitor Running Services
3. Assess Memory Usage
4. Evaluate CPU Usage
5. Send Comprehensive Report
6. Exit
```

### 3️⃣ Run in cron mode (auto report)
```bash
./sys_health.sh --cron
```
This skips the menu and directly emails the report.

---

## ⏰ Automating with Cron
Schedule the script to run daily at **9:00 AM**:

```bash
crontab -e
```

Add this line:
```bash
0 9 * * * /bin/bash /path/to/sys_health.sh --cron
```

---

## 📧 Sample Email Report
```
=============================
   System Health Report
=============================
Date: Sat Aug 23 09:00:01 IST 2025

=== Disk Usage ===
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /

=== Running Services ===
● ssh.service - OpenSSH server
● cron.service - Background scheduler
...

=== Memory Usage (MB) ===
              total        used        free
Mem:           3953        2012        1941

=== CPU Usage ===
%Cpu(s):  4.2 us,  1.1 sy,  0.0 ni, 94.5 id, 0.2 wa, 0.0 hi, 0.0 si, 0.0 st
```

---

## 🔮 Future Enhancements
- 🚨 Disk usage threshold alerts  
- 📊 Monitor critical services (nginx, mysql, docker)  
- 🔔 Send alerts to **Slack / Teams / Discord**  

---

## 👨‍💻 Author
**Pratik**  
📧 Email: [Pratik.gitlab@gmail.com](mailto:Pratik.gitlab@gmail.com)  
🌐 Sharing my **DevOps Journey** step by step → #LearnInPublic 🚀  

---

⭐ Don’t forget to **star the repo** if you find this useful!  
