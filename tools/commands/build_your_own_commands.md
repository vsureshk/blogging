




writing simple shell scripts via pipes


build the script incrementally
iterate with filters till you get a acceptable solutions(not not perfect)



basic commands you should know




cat filename



| 
pipe symbol, connects output(stdout) of one program to input(stdin) of another program


grep
powerful filtering too with regular expression

grep hello  # simple string based search

grep "hello$" #  $ is end of line in regular expression
grep "^This"  # ^ is beginning of line

grep -v 'error'  # -v changes instead of selection into rejection, so only content which dont have 'erro' will be shown


you can use pipe multiple times and grep in a sequential manner. good for a beginner. if you are experienced you can use complex regular expression single character match, multiple character match, character range, and/or etc




wc
word count

wc -l
word count by line





xargs

pipe sends output as string with newlines, but some programs cant take it as input via stdin, xargs instead invokes the app with parameters


git ls-files - "*.rb" | xargs cat  | wc -l



>
save output to file
* dont add pipe before it

>> append to file

<
load data from file


echo command
prints the content which is put after it



sort
sorts lines as string

sort -n
sort as number

sort -r  
sorted in reverse order

sort -nr
soprted in reverse, numberically



uniq
removes all the duplicates

uniq -c
removes duplicates and shows the count of duplicates




tee
prints the output to screen while also sending the content to a file or another command




ls
list files


ls -r
list file recursive

ls -la
list files with with all details



touch 
touch a file to create it



> a.log
will empty a log


cp
copy file

mv move a file



ln
create symbolic link to a file/folder(commonly known as symlink or shortcut)









