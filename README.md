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

5. Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc. [Commit 7599df8](https://github.com/aliceswood/student-directory/commit/7599df8e596c9e1a9a611f13741836a6761eb312)

6. Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned. [Commit 8678f91](https://github.com/aliceswood/student-directory/commit/8678f914a596a7f564890efc99aba6b08b7a8c11)

7. In the add_student method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? [Commit 2c1732b](https://github.com/aliceswood/student-directory/commit/2c1732be7aff3a6c5e4b39ca8700a3ce9cc99607)

8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort. [Commit 2313e50](https://github.com/aliceswood/student-directory/commit/2313e509bd17ddc9d21522a866e5b5e0f183beb8)

9. Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise?

10. We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).

11. Once you have completed the "Asking for user input" section, open this file. It's Ruby code but it has some typos. Copy it to a local file and open it in VS Code without syntax highlighting. To do this, change the language of the file from 'Ruby' to 'Plain Text' by clicking the blue word 'Ruby' in the bottom right corner and searching for 'plain text'.


[def]: https://github.com/aliceswood/student-directory/commit/61a123a70e0910fc76de2451482352c63748d6a3