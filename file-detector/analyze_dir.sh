#!/bin/bash

echo "Анализ всех файлов в текущей директории"
echo "========================================"

declare -A stats
total=0

for file in *; do
    if [ -f "$file" ]; then
        type=$(cat "$file" 2>/dev/null | ./detect.sh 2>/dev/null)
        ((stats[$type]++))
        ((total++))
        printf "%-30s: %s\n" "$file" "$type"
    fi
done

echo
echo "========================================"
echo "СТАТИСТИКА:"
echo "Всего файлов: $total"

for type in "${!stats[@]}"; do
    count=${stats[$type]}
    percent=$((count * 100 / total))
    echo "  $type: $count ($percent%)"
done
