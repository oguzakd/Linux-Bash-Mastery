# disk-cleanup-tool


# Disk Cleanup Project

## EN - Overview
This script is designed to help users clean up their disk by listing and removing files based on a size filter. The user can specify a size unit (KB, MB, GB, TB) and a size value, and the script will list files larger than the specified size, allowing the user to choose files for deletion.

## TR - Genel Bakış
Bu script, kullanıcıların disklerini temizlemelerine yardımcı olmak için, boyut filtresine göre dosyaları listeleyip silmelerini sağlar. Kullanıcı, bir boyut birimi (KB, MB, GB, TB) ve bir boyut değeri belirleyerek belirtilen boyuttan büyük dosyaları listeleyebilir ve silme işlemi yapabilir.

## EN - Features
- Users can select the size unit (KB, MB, GB, TB) and provide a size value.
- The script lists files that are larger than the specified size.
- The script excludes system directories (`/proc`, `/run`, `/sys`) from the search to avoid errors.
- Users can see file names and their sizes before deleting.

## TR - Özellikler
- Kullanıcılar boyut birimini (KB, MB, GB, TB) seçebilir ve bir boyut değeri girebilir.
- Script, belirtilen boyuttan büyük dosyaları listeler.
- Sistem dizinleri (`/proc`, `/run`, `/sys`) aramadan hariç tutulur, böylece hatalar önlenir.
- Kullanıcılar dosya adlarını ve boyutlarını görerek silme işlemi yapabilir.

## EN - How to Use
1. Make the script executable:
   ```
   chmod +x disk_cleanup.sh
   ```

2. Run the script with `sudo` to have the necessary permissions:
   ```
   sudo ./disk_cleanup.sh
   ```

3. Follow the prompts:
   - Select the size unit (KB, MB, GB, TB).
   - Enter the file size.
   - The script will list the files that are larger than the specified size.

## TR - Kullanım Talimatları
1. Script’i çalıştırılabilir hale getirin:
   ```
   chmod +x disk_cleanup.sh
   ```

2. Gerekli izinlere sahip olmak için script’i `sudo` ile çalıştırın:
   ```
   sudo ./disk_cleanup.sh
   ```

3. İstenilen adımları takip edin:
   - Boyut birimini (KB, MB, GB, TB) seçin.
   - Dosya boyutunu girin.
   - Script, belirtilen boyuttan büyük dosyaları listeleyecektir.

## EN - License
This project is open source and available under the MIT License.

## TR - Lisans
Bu proje açık kaynaklıdır ve MIT Lisansı altında mevcuttur.
