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
    puts "No cohort selected - they have been added to the next cohort to start which is: #{upcoming_cohort}"

    cohort = upcoming_cohort
  else 
    puts "Cohort not recognised - they have been added to the next cohort to start which is: #{upcoming_cohort}"

    cohort = upcoming_cohort
  end
end

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
    cohort = cohort_choice
    puts "please enter a hobby"

    hobby = gets.chomp
    puts "please enter country of birth"

    country = gets.chomp
    puts "please enter height in cm"

    height = gets.chomp

    @students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
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
  puts "#{n + 1}. #{@students[n][:name]}, (#{@students[n][:cohort]} cohort), likes #{@students[n][:hobby]}, is from #{@students[n][:country]}, has a height of #{@students[n][:height]}cm"

  n += 1
  end
end

def print_footer(name)
 puts "Overall, we have #{name.count} great students"

end

def print_students_by_cohort
  puts "which cohort would you like to view? (please enter name of month)"
  cohort_selection = gets.chomp.capitalize
  
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

# students = add_student
# print_header
print_students_by_cohort
# print_footer(students)
