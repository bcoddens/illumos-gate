echo "Please enter bug number:"
read input_variable
webrev -t rsync://webrev@cr.illumos.org:$input_variable-illumos -O -U -p master
