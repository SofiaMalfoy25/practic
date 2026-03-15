bytes=$(head -c 4 | od -t x1 -An | tr -d ' \n')
if [ "$bytes" = "25504446" ]; then
    echo "yes"
else
    echo "no"
fi
