#!/bin/sh

find . -name "*.md" | xargs -I{} rustdoc --test {}