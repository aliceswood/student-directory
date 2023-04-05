@students = [
  {name: "Dr Evil", cohort: "July", hobby: "being evil", country: "Belgium", height: 173},
  {name: "Voldemort", cohort: "June", hobby: "being evil", country: "England", height: 180},
  {name: "The Joker", cohort: "June", hobby: "being evil", country: "USA", height: 187},
  {name: "Darth Vader", cohort: "August", hobby: "being evil", country: "Tatooine", height: 190},
  {name: "Freddie Krueger", cohort: "June", hobby: "being evil", country: "Springwood", height: 175}
]
@width = 50

def cohort_choice
  upcoming_cohort = :May
  puts "Please enter the number of the monthly cohort they will be joining"

  cohort = gets.strip.capitalize

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
    puts "No cohort selected - they have been added to the next cohort to start which is: #{upcoming_cohort}"
    cohort = upcoming_cohort
  else 
    puts "Cohort not recognised - they have been added to the next cohort to start which is: #{upcoming_cohort}"
    cohort = upcoming_cohort
  end
end

def add_student
  puts "do you wish to add a student? (yes/no)"

  user_choice = gets.strip

  if user_choice == "yes"
    true
  elsif user_choice == "no"
    false
  end

  while user_choice == "yes"
    puts "please enter the name of the student"

    name = gets.strip
    cohort = cohort_choice
    puts "please enter a hobby"

    hobby = gets.strip
    puts "please enter country of birth"

    country = gets.strip
    puts "please enter height in cm"

    height = gets.strip

    @students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
    puts "We now have #{@students.count} students"

    puts "Would you like to add another student? (yes/no)"

    user_choice = gets.strip
  end
end

def print_header
  puts "the students of Villains Academy"
  puts "---------------"
end

def print_students_list
  if @students.empty?
    puts "we have no students"
  else
    n = 0
    while n < @students.count
    puts "#{n + 1}. #{@students[n][:name]}, (#{@students[n][:cohort]} cohort), likes #{@students[n][:hobby]}, is from #{@students[n][:country]}, has a height of #{@students[n][:height]}cm"
    n += 1
    end
  end
end

def print_footer
  if @students.length == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def print_students_by_cohort
  puts "which cohort would you like to view? (please enter name of month)"
  cohort_selection = gets.strip.capitalize
  
  if @students.empty?
    puts "we have no students"
  else 
    @students.each do |student|
      if student[:cohort] == cohort_selection
        puts student[:name]
      end
    end
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp) 
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list of students to students.csv"
  puts "4. Show students by cohort"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      students = add_student
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      print_students_by_cohort
    when "9"
      exit
    else 
      puts "I don't know what you meant, try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file. puts csv_line
  end
  file.close
end

interactive_menu