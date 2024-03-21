
clear
for file in ./*.asm; do
	if [ -f "$file" ]; then
		obj="${file%.asm}.o"
		nasm -felf64 -o "$obj" "$file"
	fi
done
ld -o md *.o
rm *.o
./md "$@"

