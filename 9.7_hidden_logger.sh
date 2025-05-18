LOGFILE="$HOME/.cmdlog"
touch "$LOGFILE"
chmod 600 "$LOGFILE"

while true; do
    history 1 >> "$LOGFILE"
    sleep 1
done
