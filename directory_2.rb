require 'csv'

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
  puts '3. Save the list of students to file'
  puts '4. Load the list from file'
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
    puts "which file would you like to load?"
    load_file = gets.chomp
    if !File.exist?(load_file) || load_file.empty?
      puts 'file not found - loading students.csv by default'
      load_students
    else
      load_students(load_file)
    end
  when '9'
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def input_student
  puts 'you have chosen to add a student, please confirm this is correct. (Y/N)'

  user_choice = STDIN.gets.strip.capitalize

  if user_choice == 'Yes' || user_choice == 'Y'
    true
  elsif user_choice == 'No' || user_choice == 'N'
    false
  end

  while user_choice == 'Yes' || user_choice == 'Y'
    puts 'please enter the name of the student'

    name = gets.strip
    cohort = cohort_choice

    add_student(name, cohort)

    puts "We now have #{@students.count} students"

    puts 'Would you like to add another student? (yes/no)'

    user_choice = gets.strip.capitalize
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
  puts "which file would you like to save to?"
  filename = gets.chomp

  CSV.open(filename, 'w') do |csv|
      csv << [student[:name], student[:cohort]]
    end
  puts "Your file has been saved successfully to #{filename}"
end

def load_students(filename = @default_filename)
  if File.exists?(filename)
  CSV.open(filename, 'r') do |csv|
    csv.readlines.each do |line|
      name, cohort = line
      add_student(name, cohort)
      end
    end
  else 
    puts "#{filename} was not found - #{@default_filename} has been loaded by default."
    load_students(@default_filename)
  end
  puts 'Your file has loaded successfully'
end

def try_load_students
  filename = ARGV.first
  if filename.nil?
    puts "We need a file name - #{@default_filename} has been loaded by default."
    load_students(@default_filename)
  elsif CSV.exist?(filename)
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


interactive_menu
