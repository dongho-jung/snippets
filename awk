# print sum of second column
awk '{SUM+=$2} END {print SUM}'

# print actual size of directories in BYTES (du in OSX doesn't work with BYTE UNIT)
for dir in */; do echo -n "$dir: "; (cd "$dir" && stat -f "%z" * 2>/dev/null | awk '{total += $1} END {print total}'); done
