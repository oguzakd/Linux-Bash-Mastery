#!/bin/bash

# EN - Ask user to choose the file size unit (KB, MB, GB, TB)
# TR - Kullanıcıdan dosya büyüklüğü birimini seçmesini iste (KB, MB, GB, TB)
echo "Please select the size unit (KB, MB, GB, TB):"
read UNIT

# EN - Ask user for the file size value
# TR - Kullanıcıdan dosya boyutunu girmesini iste
echo "Please enter the file size:"
read SIZE

# EN - Convert the size to bytes based on the unit
# TR - Kullanıcının verdiği büyüklük birimini bayta dönüştür
if [ "$UNIT" == "KB" ]; then
    SIZE_IN_BYTES=$((SIZE * 1024))
elif [ "$UNIT" == "MB" ]; then
    SIZE_IN_BYTES=$((SIZE * 1024 * 1024))
elif [ "$UNIT" == "GB" ]; then
    SIZE_IN_BYTES=$((SIZE * 1024 * 1024 * 1024))
elif [ "$UNIT" == "TB" ]; then
    SIZE_IN_BYTES=$((SIZE * 1024 * 1024 * 1024 * 1024))
else
    echo "Invalid unit! Please use KB, MB, GB, or TB."
    exit 1
fi

# EN - List files larger than the given size in bytes, excluding system directories
# TR - Verilen boyuttan büyük dosyaları listele, sistem dizinlerini hariç tut
echo "Listing files larger than $SIZE $UNIT:"

# EN - Using find to list files larger than the specified size, excluding certain directories and suppressing permission errors
# TR - find komutunu kullanarak belirtilen boyuttan büyük dosyaları listele, izin hatalarını ve bazı dizinleri hariç tut
find / -type f -size +${SIZE_IN_BYTES}c ! -path "/proc/*" ! -path "/run/*" ! -path "/sys/*" -exec ls -lh {} \; 2>/dev/null | awk '{ print $9 ": " $5 }'

# EN - Inform the user the operation is completed
# TR - İşlemin tamamlandığını kullanıcıya bildir
echo "Listing complete."
