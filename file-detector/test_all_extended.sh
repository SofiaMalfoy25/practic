

echo "==========================================="
echo "РАСШИРЕННОЕ ТЕСТИРОВАНИЕ"
echo "==========================================="
echo

# Функция тестирования одного файла
test_file() {
    local file=$1
    local expected=$2
    local result=$(cat "$file" 2>/dev/null | ./detect.sh 2>/dev/null)
    
    printf "%-20s: " "$file"
    if [ "$result" = "$expected" ]; then
        echo -e "\033[32m✓ $result\033[0m"
    else
        echo -e "\033[31m✗ ожидалось: $expected, получено: $result\033[0m"
    fi
}

# Тестируем все файлы
test_file "real.pdf" "pdf"
test_file "sample.jpg" "jpeg"
test_file "sample.png" "png"
test_file "sample.gif" "gif"
test_file "sample.bmp" "bmp"
test_file "sample.zip" "zip"
test_file "sample.gz" "gzip"
test_file "sample.wav" "wav"
test_file "sample.mp3" "mp3"
test_file "sample.exe" "exe"
test_file "sample.docx" "docx"
test_file "sample.txt" "unknown"

echo
echo "==========================================="
