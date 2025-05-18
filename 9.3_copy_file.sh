TMPFILE="/tmp/testfile"
USERFILE="$HOME/copiedfile"

echo "Привіт від $USER" > "$TMPFILE"

echo "[Root] Копіювання файлу до домашнього каталогу..."
sudo cp "$TMPFILE" "$USERFILE"
sudo chown root:root "$USERFILE"
sudo chmod 600 "$USERFILE"

echo "Спроба запису до файлу:"
echo "Спроба запису" >> "$USERFILE" 2>/dev/null || echo "Запис заборонено."

echo "Спроба видалення файлу:"
rm "$USERFILE" && echo "Файл видалено." || echo "Не вдалося видалити файл."
