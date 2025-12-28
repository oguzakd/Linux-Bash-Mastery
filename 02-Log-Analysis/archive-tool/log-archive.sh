#!/bin/bash

# EN - Usage check
# TR - Kullanım kontrolü
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"

# EN - Is it a valid directory?
# TR - Geçerli klasör mü?
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: '$LOG_DIR' is not a valid directory."
    exit 1
fi

# EN - Directory to store archives
# TR - Arşivleri saklayacağımız dizin
ARCHIVE_DIR="$HOME/log-archives"
mkdir -p "$ARCHIVE_DIR"

# EN - Timestamp label
# TR - Tarih-saat etiketi
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

# EN - Archive process
# TR - Arşivleme işlemi
tar -czf "${ARCHIVE_DIR}/${ARCHIVE_FILE}" -C "$LOG_DIR" .

# EN - Write to log file
# TR - Log dosyasına yaz
echo "$TIMESTAMP - Archived $LOG_DIR to $ARCHIVE_FILE" >> "${ARCHIVE_DIR}/archive.log"

# EN - Inform the user
# TR - Kullanıcıya bilgi ver
echo "✅ Logs archived to: ${ARCHIVE_DIR}/${ARCHIVE_FILE}"
