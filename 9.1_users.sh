echo "Список звичайних користувачів (UID > 1000, крім системних):"
getent passwd | while IFS=: read -r user pass uid gid full home shell; do
    if [ "$uid" -ge 1000 ] && [ "$user" != "$USER" ]; then
        echo "$user (UID=$uid)"
    fi
done
