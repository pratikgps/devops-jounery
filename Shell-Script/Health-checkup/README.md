# 🖥️ System Health Monitoring Script  

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)  
[![Cron Job](https://img.shields.io/badge/Automated-Cron%20Job-blue.svg)](https://en.wikipedia.org/wiki/Cron)  
[![DevOps Journey](https://img.shields.io/badge/DevOps-LearnInPublic-success)](https://linkedin.com)  

A **lightweight Bash script** to monitor your system’s health (Disk, Memory, CPU, Running Services) and automatically send a **daily email report** 📧.  

Perfect for **Linux admins, DevOps learners, and self-hosted servers**.  

---

## ✨ Features
✅ Check **Disk Usage** (`df -h`)  
✅ Monitor **Running Services** (`systemctl list-units`)  
✅ View **Memory Usage** (`free -m`)  
✅ Track **CPU Usage** (`top -bn1`)  
✅ Generate and email a **daily health report**  
✅ Interactive **menu mode** for manual checks  
✅ Automated **cron job mode** for daily scheduling  

---

## 📂 Project Files
sys_health.sh # Main Bash script
README.md # Documentation

yaml
Copy code

---

## ⚙️ Requirements
- Linux system (Ubuntu/Debian recommended) 🐧  
- Install `mailutils` (for sending email reports):  
  ```bash
  sudo apt update
  sudo apt install -y mailutils
Update your email address in the script:

bash
Copy code
EMAIL="Pratik.gitlab@gmail.com"

🛠️ Usage
1. Make the script executable
chmod +x sys_health.sh

2. Run interactively (menu-driven)
./sys_health.sh


You’ll get options like:

1. Check Disk Usage
2. Monitor Running Services
3. Assess Memory Usage
4. Evaluate CPU Usage
5. Send Comprehensive Report
6. Exit


3. Run directly in cron mode
./sys_health.sh --cron


This will skip the menu and email the full report.

markdown
Copy code
1. Check Disk Usage
2. Monitor Running Services
3. Assess Memory Usage
4. Evaluate CPU Usage
5. Send Comprehensive Report
6. Exit
3️⃣ Run directly in cron mode (no menu)
bash
Copy code
./sys_health.sh --cron
This generates and emails the report instantly.

⏰ Automating with Cron

Set up a daily health check email at 9:00 AM:

crontab -e


Add this line:

0 9 * * * /bin/bash /path/to/sys_health.sh --cron


📧 Email Report Sample
diff
Copy code
=============================
   System Health Report
=============================
Date: Mon Aug 25 09:00:01 IST 2025

=== Disk Usage ===
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /

=== Running Services ===
● ssh.service - OpenBSD Secure Shell server
● cron.service - Background job scheduler
...

=== Memory Usage (MB) ===
              total        used        free
Mem:           3953        2012        1941

=== CPU Usage ===
%Cpu(s):  4.2 us,  1.1 sy,  0.0 ni, 94.5 id, 0.2 wa, 0.0 hi, 0.0 si, 0.0 st
🔮 Future Enhancements
🚨 Add alerts for high disk usage

📊 Track specific services (nginx, mysql, docker)

🔔 Integrate with Slack / Teams for notifications


👨‍💻 Author : Pratik Gupta
📧 Email: Pratik.gitlab@gmail.com

🌐 Sharing my DevOps Journey step by step!

⭐ If you find this useful, don’t forget to star the repo and follow my #LearnInPublic journey 🚀
