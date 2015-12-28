#!/bin/sh

SAVED_PWD=$(pwd)
export MDBOOK=$HOME/mdBook; echo "INFO:MDBOOK: $MDBOOK"

if [ ! -f "$MDBOOK"/target/release/mdBook ]; then
    git clone https://github.com/azerupi/mdBook $MDBOOK
    cd $MDBOOK
    git checkout 7762475b337878d17ad7501b6c073b443cf23365
    cargo build --release
    cd $SAVED_PWD
else
    echo "Using cached $MDBOOK"
fi

export PATH=$PATH:$MDBOOK/target/release; echo "INFO:PATH: $PATH"
