# 📦 File Backup and Recovery Tool (Linux)

## 📌 Overview

This project is a command-line based File Backup and Recovery Tool built using Bash scripting in a Linux (WSL/Ubuntu) environment. It allows users to create compressed backups of directories with timestamps and restore them when needed. The system also includes logging and automation using cron jobs.

---

## 🚀 Features

* 📁 Backup any directory
* 🕒 Timestamp-based versioning
* 📦 Compression using tar.gz
* 🔄 Restore functionality
* 📝 Logging of backup and restore operations
* ⏰ Automated backups using cron jobs

---

## 🛠️ Technologies Used

* Bash Scripting
* Linux Commands (tar, date, ls, mkdir)
* WSL (Ubuntu)
* Git & GitHub

---

## 📂 Project Structure

backup-recovery-tool/
│
├── scripts/
│   ├── backup.sh
│   ├── restore.sh
│   └── utils.sh
│
├── backups/
├── restored/
├── logs/
│   └── backup.log
│
├── config/
├── run.sh
└── README.md

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

git clone https://github.com/me-devgarg/backup-recovery-tool.git
cd backup-recovery-tool

---

### 2. Give Execute Permissions

chmod +x scripts/*.sh run.sh

---

### 3. Create Test Folder

mkdir test_folder
touch test_folder/file1.txt

---

## ▶️ Usage

### 🔹 Backup a Directory

./run.sh backup test_folder

---

### 🔹 Restore Backup

./run.sh restore

---

## 📂 Output

* Backups stored in: backups/
* Restored files in: restored/
* Logs stored in: logs/backup.log

---

## ⏰ Cron Job Setup (Automation)

Open cron editor:
crontab -e

Example (runs every minute for testing):

* * * * * /home/devgarg24/backup-recovery-tool/run.sh backup /home/devgarg24/backup-recovery-tool/test_folder

Example (runs daily at 10 PM):
0 22 * * * /home/devgarg24/backup-recovery-tool/run.sh backup /home/devgarg24/backup-recovery-tool/test_folder

---

## 🧠 Learning Outcomes

* Shell scripting fundamentals
* File handling in Linux
* Automation using cron jobs
* Error handling and logging

---

## 👨‍💻 Author

Dev Garg
