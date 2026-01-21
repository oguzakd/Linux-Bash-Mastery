# Simple Backup Script

# Backup Project

This is a simple **Bash script** project that allows the user to back up a selected folder into a compressed `.tar.gz` file on their Desktop.

---

## Features

- Asks the user to enter a folder path.
- Checks if the folder exists.
- Compresses the folder into a `.tar.gz` archive.
- Saves the backup file on the Desktop with a timestamped filename.
- Provides success or error messages.

---

## How to Use

1. Open a terminal.
2. Navigate to the project folder:
   ```bash
   cd ~/Desktop/backup_project
   ```
3. Make the script executable (only needed once):
   ```bash
   chmod +x backup.sh
   ```
4. Run the script:
   ```bash
   ./backup.sh
   ```
5. Enter the folder path when prompted.

The backup file will be saved on your Desktop.

---

## Requirements

- Bash shell
- `tar` command available (standard on most Linux distributions)

---

# Yedekleme Projesi

Bu, kullanıcının seçtiği bir klasörü **.tar.gz** formatında sıkıştırarak Masaüstüne kaydetmesini sağlayan basit bir **Bash scripti** projesidir.

---

## Özellikler

- Kullanıcıdan yedeklemek istediği klasörün yolunu ister.
- Klasörün var olup olmadığını kontrol eder.
- Klasörü `.tar.gz` arşiv dosyası olarak sıkıştırır.
- Yedek dosyasını zaman damgası içeren bir isimle Masaüstüne kaydeder.
- Başarı veya hata mesajı gösterir.

---

## Nasıl Kullanılır

1. Terminali açın.
2. Proje klasörüne gidin:
   ```bash
   cd ~/Desktop/backup_project
   ```
3. Scripti çalıştırılabilir yapın (sadece ilk sefer için):
   ```bash
   chmod +x backup.sh
   ```
4. Scripti çalıştırın:
   ```bash
   ./backup.sh
   ```
5. İstendiğinde yedeklemek istediğiniz klasörün yolunu girin.

Yedek dosyanız Masaüstüne kaydedilecektir.

---

## Gereksinimler

- Bash shell
- `tar` komutunun sistemde kurulu olması (çoğu Linux dağıtımında varsayılan gelir)

---
