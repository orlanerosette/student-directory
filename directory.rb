
# created student array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# created print header method
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

# created print names method
def print_names(names)
  names.each { |student| puts student }
end


# created print footer method
def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

# calling the methods
print_header
print_names(students)
print_footer(students)