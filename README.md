# Linux-Shell-and-Bash-Scripting
## Procudure of running Shell Scripting in Windows machine :
> ## firstly install [Git Bash](https://git-scm.com/downloads) then Open directory inside it and run  ` sh file_name.sh ` 

> ## Linux Terminal
```bash
          Opening  : ctrl + alt + t
          Closing  : ctrl + d
          clearing terminal : type clear and hit enter or cntr + l
              Showing calender : 
                  i)  cal (shows calendar of current month)
                  ii) cal -y (shows whole calendar of whole year)
                  iii) cal 2017 (shows whole calendar of 2017)
          Showing Date : date
            history of commands : 
                i) history (shows all history of commands)
                ii) !2  (run the 2th command of command history)
                iii) !! (run the most recent command)
                iv ) history -c ; history -w (clear histories) -c flag for clearing and -w flag for overriding
                v ) uparrow for traversing previous command
```

> ## Difference among terminal and shell 
```bash
        commands : typing text in linux terminal
        Terminal : where we type commands,terminal send them to shell
        Shell  : interprest the text/command and perform action	

        General commnad pattern: commandName -option input
        location of command program : which commandName
```

> ## Each Command Structure 
```bash
      i)   commandName -optionShortForm input 
                      or
           commandName --optionFullForm input

      ex : programm version : gcc -v or gcc --version
           running command with input : cal -A 1  (print calendar after 1 month here -A is the option and 1 is input to it)

      ii) option chaining : 

          using longForm : commandName --option1 --option2 --option3
          using shortForm : commandName -option1 -option2 -option3 
                            or commandName -option1option2option3
```
> ## Knowing details about a command 
```bash
      process : 01
        man -k which
        man which    (describe details about which command)
      process : 02
        help commandName
        help ls
```

> ## ls command
```bash
        ls (show all files and folders under the working directory)

        pwd (print working directory)

        ls -l (show details information about all files & folders)

        ls -l -h or ls -lh  or ls -l --human-readable 
        (show info in human readable format)
```

>## cat command
```bash
      i ) cat filename (prints file content in terminal)
          -cat > filename (write in file from terminal)
          -cat < filename (prints file content in terminal)
        ii) cat 1> output.txt or cat > output.txt 
        (remove contents of output.txt and rewrite terminals content in output.txt)
        iii) cat 1>> output.txt or cat >> output.txt 
      (keep contents of output.txt and add terminals content with them)

        iv ) cat < input.txt > output.txt
      (Read content from input.txt and paste them to output.txt)

        v) cat 0< input.txt 1> output.txt 
      (parameters 0,1 denote which task to complete first)
```

> ## Piping
```bash
      i) writing output to a file: date > output.txt

        ii) date | cut --delimiter=" " --fields=1
      send output of date to the pipe --delimiter=" " seperate columns of output basend on space and --fields=1 returns first column

        iii) date | tee fulldate.txt | cut --delimiter=" " --field=1

      send output of date to second pipe which saves content to fulldate.txt then send the same stream to the third pipe which sends its output to terminal

        iv)date | tee fulldate.txt | cut --delimiter=" " --field=1 > today.txt

      this command redirect to terminal without priting stream

        v) cat today.txt | xargs echo
           cat today.txt | xargs echo "Good Morning"
      xargs receives stream of data  from previous pipe for that command which doesn't accept previous pip output as its input
```

> ## Aliases (Giving nickname of your command)
```bash
         i) firstly create a file named '.bash_aliases' at your home directory
          ii) inside that file save the line 
        alias showDay="date | cut -d' ' -f'1'"
          or
        alias showDay2="date |cut --delimiter=' ' --fields='1'"

          ii) now reopen your terminal and type showDay hit enter then it will show the day name
```
> ## Linux file system

```bash
      i) pwd  (print working directory)
        ii) ls -l (show folders in long list format)
            ls -h (show folders in human-readable format)
            ls -lh (show folders in long listing format and human 
      readable format)
            ls -a (show all files including hidden files)
            ls *  (show all folders and files under them)
            ls D*  (show folders that starts with D)
      Regular expression is allowed here
        iii) cd Documents (go inside Documents) 
            cd ..    (come out from current folder)
            cd ~  (come to home or root directory)
        iv) file filename  (shows some neccessary info about file)
        v)  touch dates.txt  (creates a file named dates.txt)
        vi) mkdir folder_name (creates a folder )
        vii) mkdir {A,B}_{1,2}  (creates A_1,A_2,B_1,B_2 folders)
           mkdir -p delme/file{1..5} (creates folders in path -p)
        viii) touch {file}_{1,2}.txt (creates A_1,A_2,B_1,B_2 files)
        ix )  ls  {A,B}_{1..2} (show folders of A_1,A_2,B_1,B_2)
        x ) rmdir (removes only empty directory)
        xi) rm -r delme (remove recursively everything inside delme)
        xii) rm -ri delme (remove recursively and interactively which means before deleting it will ask for permission)
        xiii) cp file1.txt file2.txt (copy contents of file1.txt to file2.txt)
        xiv) cp file1 file2 copied/ (copy file1 file2 and paste them inside the folder copied)
        xv) cp -r folder1 folder2 (copy recursively everything inside folder1 and paste them inside the folder2)

        xvi) renaming files : mv file1.txt myFile.txt (rename file1.txt with myFile.txt)
             renaming folders: mv newFolder myFolder (rename newFolder with myFolder)

        xvii) moving items : mv myFolder/* myAnotherFolder/ (move everything inside myFolder to myAnotherFolder)

      running command as administrator or with permission : sudo command


```
> ## Locate Command
```bash
       i) locate *.conf  (show all files path ended with .conf)
        ii) locate -i *.CoNf (search case insentively)
        iii) locate -i --existing *.conf (show only existing items)
        iv) locate -i --existing *.conf --limit=3 (show only first three items)
        in shorthand : locate -i -e *.conf -l '3'

        v)updating database for finding any file inside any foder:
          sudo updatedb
        vi) after that: locate file1.txt (shows the path where it is)
        vii) To see database of locate : locate -S
```
> ## Find Command

```bash
       i) find or find .(shows all folder and files in depth)
        ii) find . -maxdepth 1 (show in 1 depth files and folders)
        iii) find . -type f  (show files only)
        iv) find . -type d   (show folders only)
        v)  find . -name "file1.txt" (finds out the path of file1.txt)
        vi) find . -iname "file.TxT" (finds case insensitively)
        vii) find . -size +4k -size -1G (find in depth inside this folder which files greater then 4k but less than 1G)
```

> ## Viewing files

```bash
          i) tac file1.txt (read files content from endline to startline)
          ii) rev file1.txt (read reversely every line of a file)
          iii) find | less (at first shows 20 results then if down arrow is pressed then another result is shown , if up arrow is presses then recent result is erated)
          iv) cat myFile.txt | head -n 2 (show first 2 lines of file)
           v) cat myFile.txt | tail -n 2 (show last 2 lines)
```

> ## Sorting 
```bash
        i) sort myFile.txt (sort file contents alphabetically)
        ii) sort -n  myFile.txt (sort file contents numerically)
        iii) sort -nr  myFile.txt or sort  -n -r  myFile.txt (sort the items of the file numerically and reversely)
        iv) sort -n -u myFile.txt (-u flag means keep unique numbers)
```

> ## Searching
```bash
      i) grep h myFile.txt (show the lines containing letter 'h')
      ii) grep h -c myFile.txt (show number of lines that has 'h')
      iii) grep h -i myFile.txt (-i flag means search case insensitively)
      iv) grep -v 'm' -i myFile.txt (show the lines that dont have letter 'm' )
      v)grep '^how' myFile.txt (grep also excepts regex)
```

> ## File Archiving and Compression
```bash
      i) touch file{1..3}.txt (create 3 files)
      ii) tar -cvf myArchive.tar file[1-3].txt (creating tar file)
      iii) tar -tf myArchive.tar (show files inside tar)
      iv ) tar -xvf myArchive.tar (extracting files from tar)
      v) zip 2016331076.zip file[1-3].txt (creating zip file)
      vi) unzip 2016331076.zip  (extracting files)
```

> ## Running Bash Script at linux machine

```bash
        i) which bash (shows path of location of bash compiler)
        ii) #!/bin/bash (tells the bash script where is compiler)
        iii) write your script like: 

        # is Shar and ! is Bang, combinely #! is SheBang

        #!/bin/bash
        mkdir demoFiles
        cd demoFiles
        touch file{1..100}.txt

      after that hit and save it .

        iv) bash filename.sh (runs your program and create a directory called demoFiles and 100 texts files inside it)
```

> ## Updating and Upgrading
```bash
      i) sudo apt-get update
      ii) sudo apt-get upgrade
```

> ## Searching Package installing and Uninstalling 

```bash
      i) apt-cache search sqlmap (shows little info about a package)
      ii) apt-cache show sqlmap (shows detail info about a package)
      iii) sudo apt-get install package_name
      iv) sudo apt-get source package_name (download source code)
      v) sudo apt-get purge package_name (remove package with all of its dependency files and configuration files)
      vi) sudo apt-get auto-remove (remove all unwanted dependency)
      vii)sudo apt-get clean (deletes all compressed archives)
```

> ##  Variables
```bash
      # is Sharp and ! is Bang so combinely #! is called Shebang
      # below line tells the shell where is the location of shell compiler is
      #!/bin/bash

      # printing statement
      echo "Hello World"
      echo 'Happy coding'

      #Declaring variable
      first_name='Ruman' #space is not allowed before and after = operator
      LAST_NAME='Bhuiyan' #keeping uppercase letters as variable name is convension

      #Using Variable
      echo "You are $first_name $LAST_NAME" # process : 01
      echo "You are ${first_name} ${LAST_NAME}" # process : 02

```
> ## Reading User Input 
```bash
      #!/bin/#!/usr/bin/env bash

      # number1=4
      # number2=2
      read -p "Enter  first number: " number1
      read -p "Enter  second number: " number2

      summation=$(($number1 + $number2)) # valid: summation=`expr $number1 + $number2`
      subtraction=$(($number1 - $number2))
      product=$(($number1 * $number2))
      quotient=$(($number1 / $number2))
      remainder=$(($number1 % $number2))

      echo "Summation is $summation"
      echo "subtraction is $subtraction"
      echo "product is $product"
      echo "quotient is $quotient"
      echo "remainder is $remainder"

```
> ## Operators
```bash
      #!/bin/bash

      #Relational Operators
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2

      # -eq means equal , -ne means not equal
      # -gt means greater than , -lt stands for less than
      # -ge means greater than or equal , -le means less than or equal
      if [ $num1 -gt $num2 ]
      then
        echo "${num1} is greater than ${num2}"
      else
        echo "${num1} is smaller than ${num2}"
      fi

      # Logical Operators
      # ! is logical not , -o is logical or , -a is logical and
      if [ $num1 != $num2 ]
      then
        echo "${num1} is not equal to ${num2}"
      else
        echo "${num1} is equal to ${num2}"
      fi

```
> ## Conditional Statements
```bash
      #!/bin/bash

      read -p "Enter the number: " number

      if [ $number -gt 0 ] # one space is requires after '[' and before ']'
      then
        echo "Positive"
      elif [[ $number -lt 0 ]] # no space is required inside [[]] so using it is useful
       then
        echo "Negative"
      else
        echo "Zero"
      fi

```
> ## Looping
```bash
      #!/bin/bash

      echo "While Loop: "
      #while loop
      a=5

      while [[ $a -gt 0 ]];
      do
        echo -n "${a} "
        a=`expr $a - 1` # space is required before and after - operator
      done

      echo -e "\nFor loop: "

      # for loop only works on list of items
      for b in 1 2 3 4 5
      do
        echo -n "$b "
      done

      echo -e "\nUntil Loop: "

      #untill loop
      c=5

      until [ ! $c -gt 0 ] # if condition is false then loop body will be executed
      do
        echo -n "${c} "
        c=`expr $c - 1` # space is required before and after - operator
      done

```
> ## Fuctions
```bash
      #!/bin/bash

      #decalaring function with its body
      printHello(){
        echo "Hello world"
      }
      #calling function
      printHello

      #function with arguments
      getSum(){
        result=`expr $1 + $2`
        echo "Summation is $result"
      }

      getSum 4 5 # 4 is kept in $1 and 5 is kept in $2

      getProduct(){
        prod=$(( $1 * $2 ))
        return $prod
      }

      getProduct 4 5
      product=$? # #? is capturing value of last return statement
      echo "Product is $product"

```

> ## Login To a remote server without entering password everytime using SSH (Secure Shell or Secure Socket Shell)
```bash
       step 01 : ssh-keygen    (type this command and hit enter)
       step 02 : scp id_rsa.pub rumanB@10.5.20.38:/home/rumanB/.ssh/uploaded_key.pub
       step-03 : cat uploaded_key.pub >> authorized_keys

```
