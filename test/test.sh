#!/bin/bash

mkdir test_dir

touch test_dir/a.txt

cp main test_dir

cd test_dir

output=$(./main)

if echo "$output" | grep -q "main" && echo "$output" | grep -q "a.txt"; then
	echo "Teste passou"
else
	echo "Teste falhou"
	echo "Output:"
	echo "$output"
fi

cd ..

rm -rf test_dir

