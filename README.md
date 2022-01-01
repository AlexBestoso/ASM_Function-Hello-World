# ASM_Function-Hello-World
An asm hello world that shows how to use functions!
This is the source code for the project found here : http://bestosotech.com/blog.php?tab=Code&selected=1&page=(ASM) Hello World - Linux x64 Intel Using nasm#article_2

Compile using the following commands : "nasm -felf64 -o hello.o hello.asm" followed by "nasm -felf64 -o print.o print.asm" followed by "ld -o helloWorld hello.o print.o"

The program should print the words hello world using an external print function. 

visit the bestosotech link for more information.
