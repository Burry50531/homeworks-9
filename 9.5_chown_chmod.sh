TMPFILE="/tmp/tmpcheck"

echo "Тестовий вміст" > "$TMPFILE"
echo "Файл створено: $TMPFILE"

sudo chown root:root "$TMPFILE"
sudo chmod 600 "$TMPFILE"

echo -e "\nСпроба читання файлу:"
cat "$TMPFILE" || echo "Не вдалось прочитати."

echo "Спроба запису:"
echo "Ще щось" >> "$TMPFILE" 2>/dev/null || echo "Запис заборонено."
