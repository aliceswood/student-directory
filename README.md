# student-directory

The student-directory script allows you to manage the list of students enrolled at Villains Academy.

## How to use

```shell
ruby directory.rb
```
## Exercises (step 8)
1. We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? [Commit b9ecaf2](https://github.com/aliceswood/student-directory/commit/b9ecaf2cd9628ab13c534ddbffb1b6ebe9f22535).

2. Modify your program to only print the students whose name begins with a specific letter. [Commit 5f0c045](https://github.com/aliceswood/student-directory/commit/5f0c045fb1b2543d60ef470cdc840c3aa9df6788).

3. Modify your program to only print the students whose name is shorter than 12 characters. [Commit 61a123a](https://github.com/aliceswood/student-directory/commit/61a123a70e0910fc76de2451482352c63748d6a3).

4. Rewrite the each() method that prints all students using while or until control flow methods (Loops). [Commit 0ec0d3f](https://github.com/aliceswood/student-directory/commit/0ec0d3fa4910fd5c8dff15acebebe78d32f50573).

5. Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc. [Commit 7599df8](https://github.com/aliceswood/student-directory/commit/7599df8e596c9e1a9a611f13741836a6761eb312).

6. Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned. [Commit 8678f91](https://github.com/aliceswood/student-directory/commit/8678f914a596a7f564890efc99aba6b08b7a8c11).

7. In the add_student method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? [Commit 2c1732b](https://github.com/aliceswood/student-directory/commit/2c1732be7aff3a6c5e4b39ca8700a3ce9cc99607).

8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort. [Commit 2313e50](https://github.com/aliceswood/student-directory/commit/2313e509bd17ddc9d21522a866e5b5e0f183beb8).

9. Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise? [Commit 6c7b653](https://github.com/aliceswood/student-directory/commit/6c7b653b4ee0166139736a29aac23087fa3fd681).

10. We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments). [Commit 99c67e9](https://github.com/aliceswood/student-directory/commit/99c67e9864b0e7bc8e508045219bf1b56e7b7cbd).

11. Once you have completed the "Asking for user input" section, open this file. It's Ruby code but it has some typos. Copy it to a local file and open it in VS Code without syntax highlighting. To do this, change the language of the file from 'Ruby' to 'Plain Text' by clicking the blue word 'Ruby' in the bottom right corner and searching for 'plain text'. [Commit 81d8a2e](https://github.com/aliceswood/student-directory/commit/81d8a2ee667f2adc67dd9526d33c69e1a7f3168c).

12. What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an if statement (Control Flow) to only print the list if there is at least one student in there? [Commit cc64940](https://github.com/aliceswood/student-directory/commit/cc64940c6373c735d3052de90c814030b3842a61).

## Exercises (step 14)

13. After we added the code to load the students from file, we ended up with adding the students to @students in two places. The lines in load_students() and input_students() are almost the same. This violates the DRY (Don't Repeat Yourself) principle. How can you extract them into a method to fix this problem? [Commit 68f7c91](https://github.com/aliceswood/student-directory/commit/68f7c911319ca858d596f8397b0ef5945d71ca5b).

14. How could you make the program load students.csv by default if no file is given on startup? Which methods would you need to change? [Commit f951328](https://github.com/aliceswood/student-directory/commit/f951328f61700eb86a1589fa07fed2e208ee2a55).

15. Continue refactoring the code. Which method is a bit too long? What method names are not clear enough? Anything else you'd change to make your code look more elegant? Why?

16. Right now, when the user choses an option from our menu, there's no way of them knowing if the action was successful. Can you fix this and implement feedback messages for the user?

17. The filename we use to save and load data (menu items 3 and 4) is hardcoded. Make the script more flexible by asking for the filename if the user chooses these menu items.

18. We are opening and closing the files manually. Read the documentation of the File class to find out how to use a code block (do...end) to access a file, so that we didn't have to close it explicitly (it will be closed automatically when the block finishes). Refactor the code to use a code block.

19. We are de-facto using CSV format to store data. However, Ruby includes a library to work with the CSV files that we could use instead of working directly with the files. Refactor the code to use this library.

20. Write a short program that reads its own source code (search Stack Overflow to find out how to get the name of the currently executed file) and prints it on the screen.

[def]: https://github.com/aliceswood/student-directory/commit/61a123a70e0910fc76de2451482352c63748d6a3