@default_filename = 'students.csv'
@students = [
  # {name: "Dr Evil", cohort: "July"},
  # {name: "Voldemort", cohort: "June"},
  # {name: "The Joker", cohort: "June"},
  # {name: "Darth Vader", cohort: "August"},
  # {name: "Freddie Krueger", cohort: "June"}
]

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts 'Main Menu'
  puts '1. Input the students'
  puts '2. Show the students'
  puts '3. Save the list of students to students.csv'
  puts '4. Load the list from students.csv'
  puts '9. Exit'
end

def process(selection)
  case selection
  when '1'
    students = input_student
  when '2'
    show_students
  when '3'
    save_students
  when '4'
    load_students
  when '9'
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def input_student
  puts 'do you wish to add a student? (yes/no)'

  user_choice = STDIN.gets.strip

  if user_choice == 'yes'
    true
  elsif user_choice == 'no'
    false
  end

  while user_choice == 'yes'
    puts 'please enter the name of the student'

    name = gets.strip
    cohort = cohort_choice

    add_student(name, cohort)

    puts "We now have #{@students.count} students"

    puts 'Would you like to add another student? (yes/no)'

    user_choice = gets.strip
  end
end

def cohort_choice
  upcoming_cohort = :May
  puts 'Please enter the number of the monthly cohort they will be joining'

  cohort = gets.strip

  case cohort
  when '1'
    cohort = :January
  when '2'
    cohort = :February
  when '3'
    cohort = :March
  when '4'
    cohort = :April
  when '5'
    cohort = :May
  when '6'
    cohort = :June
  when '7'
    cohort = :July
  when '8'
    cohort = :August
  when '9'
    cohort = :September
  when '10'
    cohort = :October
  when '11'
    cohort = :November
  when '12'
    cohort = :December
  when ''
    puts "No cohort selected - they have been added to the next cohort to start which is: #{upcoming_cohort}"
    cohort = upcoming_cohort
  else
    puts "Cohort not recognised - they have been added to the next cohort to start which is: #{upcoming_cohort}"
    cohort = upcoming_cohort
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  file = File.open(@default_filename, 'w')
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(',')
    file.puts csv_line
  end
  file.close
end

def load_students(filename = @default_filename)
  file = File.open(filename, 'r')
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    add_student(name, cohort)
  end
  file.close
  puts "your file 'students.csv' is ready"
end

def try_load_students
  filename = ARGV.first
  if filename.nil?
    puts "We need a file name - #{@default_filename} has been loaded by default."
    load_students(@default_filename)
  elsif File.exist?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    load_students(@default_filename)
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def add_student(name, cohort)
  @students << { name: name, cohort: cohort.to_sym }
end

def print_header
  puts 'the students of Villains Academy'
  puts '---------------'
end

def print_students_list
  if @students.empty?
    puts 'we have no students'
  else
   @students.each_with_index do |student, i|
      puts "#{i + 1}. #{student[:name]}, (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer
  if @students.length == 1
    puts 'Overall, we have 1 great student'
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

try_load_students
interactive_menu
