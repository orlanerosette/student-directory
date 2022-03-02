
# created student array
students = [
  ["Dr. Hannibal Lecter", :march],
  ["Darth Vader", :march],
  ["Nurse Ratched", :march],
  ["Michael Corleone", :march],
  ["Alex DeLarge", :march],
  ["The Wicked Witch of the West", :march],
  ["Terminator", :march],
  ["Freddy Krueger", :march],
  ["The Joker", :march],
  ["Joffrey Baratheon", :march],
  ["Norman Bates", :march]
]

# created print header method
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

# created print names method
def print(students)
  students.each { |student| puts "#{student[0]} (#{student[1]} cohort)" }
end


# created print footer method
def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

# calling the methods
print_header
print(students)
print_footer(students)