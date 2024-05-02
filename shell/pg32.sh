#!/bin/bash
read -p "Enter your password: " password

if [[ ${#password} -lt 8 ]]; then
echo "Password length must be at least 8 characters."
exit 1
fi

if ! [[ "$password" =~ [A-Za-z]+[0-9]+ ]]; then
echo "Password must contain both alphabet and number."
exit 1
fi

if ! [[ "$password" =~ [a-z]+ ]] || ! [[ "$password" =~ [A-Z]+ ]]; then
echo "Password must include both small and capital case letters."
exit 1
fi
echo "Password is valid."
