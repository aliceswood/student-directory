@students = []

def add_student
  puts "do you wish to add a student? (yes/no)"
  user_choice = gets.chomp

  if user_choice == "yes"
    true
  elsif user_choice == "no"
    false
  end

  while user_choice == "yes"
    puts "please enter the name of the student"
    name = gets.chomp
    puts "please enter a hobby"
    hobby = gets.chomp
    puts "please enter country of birth"
    country = gets.chomp
    puts "please enter height"
    puts "to finish, press enter twice"
    height = gets.chomp

    @students << {name: name, cohort: :november, hobby: hobby, country: country, height: height}
    puts "We now have #{@students.count} students"
    puts "Would you like to add another student? (yes/no)"
    user_choice = gets.chomp
  end
  @students
end

def print_header
  puts "the students of Villains Academy"
  puts "---------------"
end

def print(name)
  n = 0
  while n < name.count
  puts "#{@students[n][:name]}, (#{@students[n][:cohort]} cohort), likes #{@students[n][:hobby]}, is from #{@students[n][:country]}, has a height of #{@students[n][:height]}"
  n += 1
  end
end

def print_footer(name)
 puts "Overall, we have #{name.count} great students"
end

students = add_student
print_header
print(students)
print_footer(students)
