@students = []
@width = 75

def add_student
  puts "do you wish to add a student? (yes/no)".center(@width)
  user_choice = gets.chomp

  if user_choice == "yes"
    true
  elsif user_choice == "no"
    false
  end

  while user_choice == "yes"
    puts "please enter the name of the student".center(@width)
    name = gets.chomp
    puts "please enter a hobby".center(@width)
    hobby = gets.chomp
    puts "please enter country of birth".center(@width)
    country = gets.chomp
    puts "please enter height".center(@width)
    height = gets.chomp

    @students << {name: name, cohort: :november, hobby: hobby, country: country, height: height}
    puts "We now have #{@students.count} students".center(@width)
    puts "Would you like to add another student? (yes/no)".center(@width)
    user_choice = gets.chomp
  end
  @students
end

def print_header
  puts "the students of Villains Academy".center(@width)
  puts "---------------".center(75)
end

def print(name)
  n = 0
  while n < name.count
  puts "#{@students[n][:name]}, (#{@students[n][:cohort]} cohort), likes #{@students[n][:hobby]}, is from #{@students[n][:country]}, has a height of #{@students[n][:height]}".center(@width)
  n += 1
  end
end

def print_footer(name)
 puts "Overall, we have #{name.count} great students".center(@width)
end

students = add_student
print_header
print(students)
print_footer(students)
