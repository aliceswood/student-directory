@students = []
@width = 50

def cohort_choice
  upcoming_cohort = :May
  puts "Please enter the number of the monthly cohort they will be joining".center(@width)
  cohort = gets.chomp.capitalize

  case cohort
  when "1"
    cohort = :January
  when "2"
    cohort = :February
  when "3"
    cohort = :March
  when "4"
    cohort = :April
  when "5"
    cohort = :May
  when "6"
    cohort = :June
  when "7"
    cohort = :July
  when "8"
    cohort = :August
  when "9"
    cohort = :September
  when "10"
    cohort = :October
  when "11"
    cohort = :November
  when "12"
    cohort = :December
  when "" 
    puts "No cohort selected - they have been added to the next cohort to start which is: #{upcoming_cohort}".center(@width)
    cohort = upcoming_cohort
  else 
    puts "Cohort not recognised - they have been added to the next cohort to start which is: #{upcoming_cohort}".center(@width)
    cohort = upcoming_cohort
  end
end

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
    cohort = cohort_choice
    puts "please enter a hobby".center(@width)
    hobby = gets.chomp
    puts "please enter country of birth".center(@width)
    country = gets.chomp
    puts "please enter height".center(@width)
    height = gets.chomp

    @students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
    puts "We now have #{@students.count} students".center(@width)
    puts "Would you like to add another student? (yes/no)".center(@width)
    user_choice = gets.chomp
  end
  @students
end

def print_header
  puts "the students of Villains Academy".center(@width)
  puts "---------------".center(@width)
end

def print(name)
  n = 0
  while n < name.count
  puts "#{n + 1}. #{@students[n][:name]}, (#{@students[n][:cohort]} cohort), likes #{@students[n][:hobby]}, is from #{@students[n][:country]}, has a height of #{@students[n][:height]}".center(@width)
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
