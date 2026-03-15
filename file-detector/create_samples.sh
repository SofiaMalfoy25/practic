echo "Создание тестовых файлов..."
cp /usr/bin/bash.exe sample.elf 2>/dev/null || echo "ELF not created"

printf "\xff\xd8\xff\xe0" > sample.jpg

printf "\x89PNG\r\n\x1a\n" > sample.png

printf "PK\x03\x04" > sample.zip
printf "\x1f\x8b\x08" > sample.gz

echo "Plain text file" > sample.txt

echo "Готово!"
ls -la sample.* real.pdf
