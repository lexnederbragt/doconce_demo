# Adds an empty line after each command entry
# in the commands.sh file to improve readability
awk 'NR>1 && /^# Building/{print ""}{print $0}'
