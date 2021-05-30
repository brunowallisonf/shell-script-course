# Sequential execution
ls -l ; cd ;
(cd ; ls -l ;) opens a kind of subshell

#output redirectioning

using > creates a new file or trucate the existing

using >> appends on the file.

## error output

use 2> to redirect the error data

exemple:l ls -l alunos.txt 2> log.out

using both on the same file: ls -l alunos.txt > out.out 2>&1


#input redirectioning


example: tr a Z < alunos.txt

#variables

TEST= "BRUNO WALLISON"

Exporting variable: use export make the variable visible to child process
export TEST=1

Variables with commands
HORA= `date +%H`

or
HORA= $(date +%H)

