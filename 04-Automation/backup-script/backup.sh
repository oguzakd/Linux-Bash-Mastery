#!/bin/bash

# EN - Get backup folder path from user
# TR - Kullanıcıdan yedeklemek istediği klasörü iste
read -p "Enter the path of the folder you want to backup: " folder_path

# EN - If the folder does not exist, give an error and exit
# TR - Eğer klasör yoksa hata ver ve çık
if [ ! -d "$folder_path" ]; then
echo "Error: The folder does not exist!"
exit 1
fi

# EN - Let's prepare the name of the backup file on the desktop
# TR - Masaüstüne yedek dosyasının adını hazırlayalım
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_name="backup_$timestamp.tar.gz"
backup_path=~/Desktop/$backup_name

# EN - Compress the folder and save it to the desktop
# TR - Klasörü sıkıştır ve masaüstüne kaydet
tar -czvf "$backup_path" "$folder_path"

# EN - Give Success Message
# TR - Başarılı mesajı ver
echo "Backup completed! File saved as: $backup_path"
