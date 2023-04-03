@students = []

def input_students
  puts "Please enter the name of students"
  puts "To finish, just hit return twice"

  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"

    name = gets.chomp
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
  puts "#{@students[n][:name]} (#{@students[n][:cohort]} cohort)"
  n += 1
  end
end

def print_footer(name)
 puts "Overall, we have #{name.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
