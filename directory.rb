
# created input students method
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :march}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the array of students
    return students
  end

  
# created print header method
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end


# created print names method
def print_students(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end


# created print footer method
def print_footer(names)
  puts "Overall we have #{names.count} great students."
end


# calling the methods
students = input_students
print_header
print_students(students)
print_footer(students)