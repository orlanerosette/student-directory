
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

# printed list of students using 'puts'
puts "The students of Villains Academy"
puts "----------------"
students.each { |student| puts student }


# then we printed the total number of students using 'print'
puts "Overall we have #{students.count} great students."