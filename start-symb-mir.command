#!/bin/bash
# SYMB-MIR — double-click launcher (macOS)
# Serves this folder on a free port and opens the popout in your browser.

cd "$(dirname "$0")" || exit 1

PORT=8000
while lsof -i :$PORT >/dev/null 2>&1; do
  PORT=$((PORT + 1))
done

echo "SYMB-MIR — serving $(pwd) on port $PORT"
echo "Leave this window open while you record. Close it to stop."
echo ""

python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER_PID=$!
sleep 1
open "http://localhost:$PORT/web/symb-mir-popout.html"

trap 'kill $SERVER_PID 2>/dev/null' EXIT
wait $SERVER_PID
