
echo "Создание дополнительных тестовых файлов..."

# GIF
printf "GIF89a" > sample.gif
printf "\x00\x00\x00\x00\x00\x00" >> sample.gif

# BMP
printf "BM" > sample.bmp
printf "\x00\x00\x00\x00" >> sample.bmp

# WAV
printf "RIFF" > sample.wav
printf "\x00\x00\x00\x00WAVE" >> sample.wav

# MP3 (ID3 tag)
printf "ID3" > sample.mp3
printf "\x03\x00" >> sample.mp3

# EXE (MZ)
printf "MZ" > sample.exe
printf "\x00\x00\x00\x00" >> sample.exe

# DOCX (это тоже ZIP!)
printf "PK\x03\x04" > sample.docx
printf "\x00\x00\x00\x00" >> sample.docx

echo "Готово!"
ls -la sample.*
