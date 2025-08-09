# Shell Scripting Learner (Preferably bash)
kindly use Bash v4.0 not v3.2

---

## Table of Contents
1. [What is Linux Shell?](#what-is-linux-shell)
2. [Types of Shells](#types-of-shells)
3. [Check Your Shell Type](#check-your-shell-type)
4. [What is Shell Scripting?](#what-is-shell-scripting)
5. [First Basic Script](#first-basic-script)
6. [What is Shebang?](#what-is-shebang)
7. [Sending Output to Terminal](#sending-output-to-terminal)
8. [How to Run a Script](#how-to-run-a-script)
9. [Comments](#comments)
10. [Variables](#variables)
11. [Constant Variables](#constant-variables)
12. [Arrays](#arrays)
13. [String Operations](#string-operations)
14. [User Interaction (Taking Input)](#user-interaction-taking-input)
15. [Arithmetic Operations](#arithmetic-operations)
16. [Conditional Statements](#conditional-statements)
17. [Operators](#operators)
18. [Logical Operators](#logical-operators)
19. [Loops](#loops)
20. [Functions](#functions)
21. [Arguments in Functions](#arguments-in-functions)
22. [Arguments in Scripts](#arguments-in-scripts)
23. [Shifting Arguments](#shifting-arguments)
24. [Other Useful Concepts](#other-useful-concepts)
25. [Check if File/Directory Exists](#check-if-filedirectory-exists)
26. [Bash Variables](#bash-variables)
27. [Redirection in Scripts](#redirection-in-scripts)
28. [What is /dev/null?](#what-is-devnull)
29. [Print Name of the Script](#print-name-of-the-script)
30. [Log Messages](#log-messages)
31. [Debugging Scripts](#debugging-scripts)
32. [Running Script in Background](#running-script-in-background)
33. [Automate Scripts](#automate-scripts)
34. [Projects](#projects)

---

## What is Linux Shell?
A shell provides an environment to a user to execute commands and interact with the kernel.

## Types of Shells
- bash
- sh
- ksh
- tsh
- fish
- zsh

## Check Your Shell Type
```bash
echo $0
```

## What is Shell Scripting?
Shell script consists of a set of commands to perform a task sequentially. Examples: file manipulation, program execution, automation, etc.

## First Basic Script
```bash
#!/bin/bash
echo "Hello World!"
```

## What is Shebang?
```bash
#!/bin/bash
```

## Sending Output to Terminal
```bash
echo "Hello World!"
```

## How to Run a Script
```bash
chmod +x script.sh
./script.sh
/path/to/script.sh
bash script.sh
```
- **Ctrl+C** → terminate
- **Ctrl+Z** → stop

## Comments
```bash
# Single-line comment

<<comment
Multi-line
comment
comment
```

## Variables
```bash
VAR_NAME=value
VAR_NAME=$(hostname)
echo $VAR_NAME
```

## Constant Variables
```bash
readonly var_name="Hi"
```

## Arrays
```bash
myArray=(1 2 Hello "Hey man")
echo "${myArray[0]}"
echo "${#myArray[*]}"
myArray+=(5 6 8)

# Key-Value Arrays
declare -A myArray
myArray=([name]=Paul [age]=20)
echo "${myArray[name]}"
```

## String Operations
```bash
myVar="Hello World!"
length=${#myVar}
upper=${myVar^^}
lower=${myVar,,}
replace=${myVar/World/Buddy}
slice=${myVar:6:5}
```

## User Interaction (Taking Input)
```bash
read -p "Your name: " NAME
echo "Hello $NAME"
```

## Arithmetic Operations
```bash
let a++
let a=5*10
((a++))
((a=5*10))
```

## Conditional Statements
### If-Else
```bash
if [ $marks -gt 40 ]; then
echo "PASS"
else
echo "FAIL"
fi
```
### Elif
```bash
if [ $marks -ge 80 ]; then
echo "First Division"
elif [ $marks -ge 60 ]; then
echo "Second Division"
else
echo "Fail"
fi
```
### Case
```bash
case $choice in
    a) date;;
    b) ls;;
    *) echo "Invalid";;
esac
```

## Operators
- `-eq`, `==`
- `-ge`
- `-le`
- `-ne`, `!=`
- `-gt`
- `-lt`

## Logical Operators
- `&&`, `||`, `!`

## Loops
### For Loop
```bash
for i in 1 2 3; do
echo $i
done
```
### While Loop
```bash
count=0
while [ $count -le 5 ]; do
echo $count
((count++))
done
```
### Until Loop
```bash
a=10
until [ $a -eq 1 ]; do
echo $a
((a--))
done
```

## Functions
```bash
myfun() {
    echo "Hello"
}
myfun
```

## Arguments in Functions
```bash
addition() {
    local num1=$1
    local num2=$2
    let sum=$num1+$num2
    echo "Sum: $sum"
}
addition 12 13
```

## Arguments in Scripts
```bash
for arg in "$@"; do
echo "Argument: $arg"
done
```

## Shifting Arguments
```bash
shift
```

## Other Useful Concepts
- `break`, `continue`, `sleep`, `exit`
- `$?` → exit status
- `basename`, `dirname`, `realpath`

## Check if File/Directory Exists
```bash
[ -d folder_name ]
[ -f file_name ]
```

## Bash Variables
- `$RANDOM`
- `$UID`

## Redirection in Scripts
- `>` overwrite
- `>>` append

## What is /dev/null?
```bash
cd /root &> /dev/null
```

## Print Name of the Script
```bash
echo "Script name: ${0}"
```

## Log Messages
```bash
logger "Hey Buddy"
```

## Debugging Scripts
```bash
set -x  # Enable debugging
set -e  # Exit on error
```

## Running Script in Background
```bash
nohup ./script.sh &
```

## Automate Scripts
### Using at
```bash
at 12:09 PM
    <your_command>
ctrl+D
```
atq to see all the scheduled jobs
atrm to remove the scheduled job
### Using crontab
```bash
crontab -e
* * * * * cd /home/user && ./script.sh
```

## Projects
- Monitor free RAM
- Monitor free DISK space and send alert
- Access remote server and perform actions



P.S. Errors may exist as GPT-5 AND GROK-4 were used to generate this Readme.
All the information was grabbed from the internet plus youtube.
