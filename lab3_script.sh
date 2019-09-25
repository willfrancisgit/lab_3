#Authors : Your Name & Your partner's name
# Date: 1/1/2019

#Problem 1 Code:
git init
echo "Input file name:"
read fileName
#reads in file name
echo "Input regular expression"
read regEx
#reads in regular expression
grep -E $regEx $fileName
#searches given file for regular expression
echo "Number of phone numbers in practice text:"
grep -E -c -o '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt
#searches and counts phone numbers
echo "Number of emails in practice text:"
grep -c -E  '[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+'  regex_practice.txt
#seaches and counts emails
grep -E -o '303-[0-9]{3}-[0-9]{4}' regex_practice.txt
#lists phone numbers from 303 area code in prac text
grep @geocities.com regex_practice.txt >> email_results.txt
#puts geocities emails in a txt file
git add email_results.txt
#adds emails to git
git commit -m "Adding file containing all geocities emails"
#Make sure to document how you are solving each problem!
