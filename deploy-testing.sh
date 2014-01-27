echo "Please enter bug number:"
read input_variable
sudo ./usr/src/tools/scripts/onu \
    -t nightly-$input_variable -d $PWD/packages/i386/nightly-nd
