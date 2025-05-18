for dir in "$HOME" "/usr/bin" "/etc"; do
    echo -e "\nКаталог: $dir"
    ls -l "$dir" | head -n 10
done

cat /etc/hostname 2>/dev/null || echo "Не вдалося прочитати файл"
echo "test" >> /etc/testfile 2>/dev/null || echo "Запис у /etc заборонено"
