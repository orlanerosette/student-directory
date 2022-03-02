
# created student array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :march},
  {name: "Darth Vader", cohort: :march},
  {name: "Nurse Ratched", cohort: :march},
  {name: "Michael Corleone", cohort: :march},
  {name: "Alex DeLarge", cohort: :march},
  {name: "The Wicked Witch of the West", cohort: :march},
  {name: "Terminator", cohort: :march},
  {name: "Freddy Krueger", cohort: :march},
  {name: "The Joker", cohort: :march},
  {name: "Joffrey Baratheon", cohort: :march},
  {name: "Norman Bates", cohort: :march}
]

# created print header method
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

# created print names method
def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end


# created print footer method
def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

# calling the methods
print_header
print(students)
print_footer(students)