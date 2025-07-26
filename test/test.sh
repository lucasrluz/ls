#!/bin/bash

list_contents() {
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
}

list_contents_with_path_is_provided() {
	mkdir test_dir

	touch test_dir/a.txt

	output=$(./main test_dir)

	if echo "$output" | grep -q "a.txt"; then
		echo "Teste passou"
	else
		echo "Teste falhou"
		echo "Output:"
		echo "$output"
	fi

	rm -rf test_dir
}

list_contents
list_contents_with_path_is_provided
