## Solution File: A Command Line Challenge

### Script 1 Solutions
- What is the command to check your working directory?
    - pwd
- What is the command to list out files and directories from this directory?
    - ls
- What is the command to create an empty file named 'example.txt'?
    - touch example.txt
- What is the command to view the contents of 'example.txt'
    - cat example.txt
- What is the command to remove 'example.txt'
    - rm example.txt
 
**Code for script1:** sMnBvCxZaQpOIUyTREsdFghJ

### Script 2 Solutions

- How many lines are in the log file?
   - Command to solve: `cat apache.log | wc -l`
     - Answer: 140
- How many POST records are in the log file?
   - Command to solve: `cat apache.log | grep POST | wc -l`
     - Answer: 140
- How many records are GET requests that are not accessing a file that contains the name 'logo'?
   - Command to solve: `cat apache.log | grep GET | grep -v logo | wc -l`
     - Answer: 124
- What is the line number of the log record that has a GET request accessing 'secret_banner.jpg'?
   - Command to solve: `cat apache.log | grep -n secret_banner.jpg`
     - Answer: 119
- What is the count of image files, specifically .png and .jpg?
   - Command to solve: `cat apache.log | grep -E '\.jpg|\.png' | wc -l`
     - Answer: 36

**Code for script2:** GhYtRsMnBvCx

### Script 3 Solutions

- What does SED stand for (lower case)?
     - Answer: stream editor
- What is the command to replace 'WRONG_PASSWORD' with 'LOGIN_REJECTED'? Begin your command with 'cat activity.log'.
     - Answer: `cat activity.log | sed 's/WRONG_PASSWORD/LOGIN_REJECTED/'`
- Run the command and output it to a new file. Now, what is the count of records in the new file that contain LOGIN_REJECTED?
     - Command to solve: `cat activity.log | sed 's/WRONG_PASSWORD/LOGIN_REJECTED/' | grep LOGIN_REJECTED | wc -l`
     - Answer: 114
- Research and run the sed command to print out the 99th line in the activity.log file. What is the number that comes up after rv: on that line?
   - Command to solve: `sed -n '99p' activity.log`
     - Answer: 55

**Code for script 3:** mLuJiKdEfGhYtRsMnBvCxZaQ

### Script 4 Solutions

- What does the letter k stand for in AWK (lower case)?
     - Answer: kernighan
- If you delimited by spaces, what field would the date/time be in?
   - Command to solve: `cat activity.log | awk '{print $4}'`
     - Answer: 4
- Delimit out the IP addresses, and then count the UNIQUE IP addresses. How many are there?
   - Command to solve: `cat activity.log | awk '{print $1}' | sort -u | wc -l`
     - Answer: 11
- Delimit by this charachter  -   , then count the unique values in field 4. How many are there?
   - Command to solve: `cat activity.log | awk -F- '{print $4}' | sort -u | wc -l`
     - Answer: 5
- What is the count of different unique months in the logs?
   - Command to solve: `cat activity.log | awk -F/ '{print $2}' | sort -u | wc -l`
     - Answer: 8

**Code for script 4:** WcNmLuJiKdEf

### Script 5 Solutions

- What is the count of hashes in the current_hashes file?
   - Command to solve: `cat current_hashes | wc -l`
     - Answer: 51
- How many hashes were modified?
   - Command to solve: `diff current_hashes backup_hashes`
     - Answer: 1
- For the one modified hash, one charachter was changed. What was it changed to?
    - Just looking at the results from the previous command, you will see 5 was changed to g.
      - Answer: g
- Can you figure out the original password that was hashed?
   - Method to solve: Using a website like https://crackstation.net/, you can crack the hash of e10adc3949ba59abbe56e057f20f883e
     - Answer: 123456

**Code for script 5:** mLuJiKdEfGhYtRs

### Script 6 Solutions

- How many employees had data exposed?
   - Command to solve: `cat employee_table.csv | wc -l`  then subtract one row for the header
     - Answer: 20
- What is the sha256 sum of the file?
   - Command to solve: `sha256sum employee_table.csv`
     - Answer: 02ef670568fa02aaad7a15393a24f6c5b0f032d32ea9347d53b684344e99994a
- Your legal team only needs a file that has the fields of name and Password_hash with the header row. After running the script to create this file, what is the charachter count of the file?
   - Command to solve: `cat employee_table.csv | cut -d' ' -f1,4 | wc -m`
     - Answer: 1391
- What is the hash type of the hashes in the file?
   - Command to solve: Look at any of the hashes and see the hashtype is indicated by $2y$, https://en.wikipedia.org/wiki/Bcrypt , 
     - Answer: bcrypt

**Code for scrupt 6:** 73845602

### Script 7 Solutions

- How many unique .com addresses are in the file?
   - Command to solve: `cat URL_List.txt | grep .com | sort -u | wc -l`
     - Answer: 47
- Create a list of only the top unique primary domains (remove the subdomain and the tld), organize it in alphabetical order, and list the 21st domain.
   - Command to solve: `cat URL_List.txt | awk -F. '{print $2}' | sort -u | head -n 21 | tail -n 1`
     - Answer: gitlab
- How many image files are being accessed?
   - Command to solve: `cat URL_List.txt | grep -E '\.jpg$|\.tiff$|\.png$' | wc -l`
     - Answer: 12
- From the list you created on question #2,  find the 31st domain on the list, Visit the original URL and enter in the code found!
   - Method to solve: `cat URL_List.txt | awk -F. '{print $2}' | sort -u | head -n 31 | tail -n 1` displays pageorama.  Go to the full website link: `https://www.pageorama.com/?p=linux_challenge`
     - Answer:  jd9sdf79shdf6723hksdfsdf

