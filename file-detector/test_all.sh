
echo "==================================="
echo "ТЕСТИРОВАНИЕ ОПРЕДЕЛИТЕЛЯ ТИПОВ"
echo "==================================="
echo
echo "Тест 1: real.pdf"
result=$(cat real.pdf | ./detect.sh)
echo "Ожидание: pdf"
echo "Результат: $result"
echo
if [ -f sample.jpg ]; then
    echo "Тест 2: sample.jpg"
    result=$(cat sample.jpg | ./detect.sh)
    echo "Ожидание: jpeg"
    echo "Результат: $result"
    echo
fi
if [ -f sample.png ]; then
    echo "Тест 3: sample.png"
    result=$(cat sample.png | ./detect.sh)
    echo "Ожидание: png"
    echo "Результат: $result"
    echo
fi
if [ -f sample.zip ]; then
    echo "Тест 4: sample.zip"
    result=$(cat sample.zip | ./detect.sh)
    echo "Ожидание: zip"
    echo "Результат: $result"
    echo
fi
echo "Тест 5: sample.txt"
result=$(cat sample.txt | ./detect.sh)
echo "Ожидание: unknown"
echo "Результат: $result"
echo

echo "==================================="
