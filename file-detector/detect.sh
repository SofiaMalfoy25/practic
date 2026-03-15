
header=$(head -c 1024 | od -t x1 -An | tr -d ' \n')
check_sig() {
    if echo "$header" | grep -q "$1"; then
        echo "$2"
        return 0
    fi
    return 1
}
check_sig "25504446" "pdf" && exit 0
check_sig "7f454c46" "elf" && exit 0        # Linux executable
check_sig "4d5a" "exe" && exit 0            # Windows executable (MZ)
check_sig "ffd8ff" "jpeg" && exit 0
check_sig "89504e47" "png" && exit 0
check_sig "47494638" "gif" && exit 0        # GIF
check_sig "424d" "bmp" && exit 0            # BMP

# Архивы
check_sig "504b0304" "zip" && exit 0
check_sig "52617221" "rar" && exit 0        # RAR
check_sig "1f8b" "gzip" && exit 0
check_sig "1f9d" "compress" && exit 0       # compress
check_sig "425a68" "bz2" && exit 0          # BZ2

# Аудио/Видео
check_sig "494433" "mp3" && exit 0          # MP3 ID3 tag
check_sig "52494646" "wav" && exit 0        # WAV
check_sig "4f676753" "ogg" && exit 0        # OGG

# Документы
check_sig "d0cf11e0" "doc" && exit 0        # MS Office 97-2003
check_sig "504b0304" "docx" && exit 0       # MS Office 2007+ (тоже ZIP!)
check_sig "7573746172" "tar" && exit 0      # TAR

echo "unknown"
