#password policy filter
grep '[[:upper:]]' rockyou.txt | grep '[[:lower:]]' | grep -E '^.{8,12}$'
