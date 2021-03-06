
@students = []

# created student array for testing
students_array = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :march},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :february},
  {name: "The Joker", cohort: :april},
  {name: "Joffrey Baratheon", cohort: :december},
  {name: "Norman Bates", cohort: :may}
]

def extra_data
	# get the cohort name
	print "Enter cohort name: "
  cohort = STDIN.gets.strip
	# get hobbies
	print "Enter student hobby/hobbies: "
	hobby = STDIN.gets.chomp
	# get current location
	print "Enter country of current residence: "
	residence = STDIN.gets.chomp
	# height
	print "Enter height: "
	height = STDIN.gets.chomp
end



# created input students method
def input_students
    puts "To finish, just hit return twice"
    # get the first name
    print "Enter student name: "
    name = STDIN.gets.strip
    
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      @students << {name: name, 
                    cohort: :march, 
                    # hobbies: hobby, 
          					# residence: residence,
                    # height: height
									}
      if @students.count == 1
        puts "Now we have #{@students.count} student"
      else             
        puts "Now we have #{@students.count} students"
      end
      # get info from the user for other student
      print "Enter student name: "
      name = STDIN.gets.chomp
    end
    # return the array of students
      return @students
  end


#  create a method to print a number before the name of each student
def print_students_with_index(students)
	@students = students
  @students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"  
  end
end

# create a method to print students whose name starts with the letter p
def print_students_beginning_with_p(students)
	@students = students
  puts "students with names beginning with 'P': "
  puts "----------------"  
  students_beginning_with_p = []
  @students.select do |student|
    if student[:name].downcase.start_with?("p") 
      puts "#{student[:name].capitalize} (#{student[:cohort]} cohort)"
      students_beginning_with_p << student[:name]
    end
  end
  puts "We have #{students_beginning_with_p.count} students with names beginning with 'P'."
end

# create a method to print students whose names are shorter than 12 characters
def print_students_less_than_12_char(students)
	@students = students
  puts "students with names shorter than 12 characters"
  puts "----------------"
  students_shorter_12 = []
  @students.select do |student| 
    if student[:name].length < 12
      puts "#{student[:name].capitalize} (#{student[:cohort]} cohort)"
      students_shorter_12 << student[:name]
    end 
  end
  puts "We have #{students_shorter_12.count} students with names shorter than 12 characters."
end


# create a method printing students using a while or until loop
def print_students_using_while(students)
	@students = students
  counter = @students.length
  while counter > 0 do
    puts @students[counter-1][:name]
    counter -= 1
  end
end

# create a method that print students by cohort
def print_students_by_cohort(students)
	@students = students
  puts "students grouped by cohort"
  puts "----------------"
  list_of_cohorts = @students.map { |student| student[:cohort] }
  list_of_cohorts.sort.uniq.each do |cohort|
    puts " ".center(50)
    puts "#{cohort} cohort".upcase.center(50)
    puts "----------------".center(50)
      @students.each do |student|
        puts student[:name].center(50) if student[:cohort] == cohort
      end
    end
end    


# created print header method
def print_header
  puts "The students of Villains Academy".center(50)
  puts "----------------".center(50)
end


# created print names method
def print_students(students)
	@students = students
    if @students.count > 0
        @students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50) }
    else
      puts "There are no students."
    end
end


# created print footer method
def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

# print the menu and ask the user what to do
def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. To exit"
end

 # show the students
 def show_students
	print_header
	print_students(@students)
	print_footer(@students)
 end

 def save_students
	 # creating(opening) the file for writing
	 file = File.open("students.csv", "w")
	 # iterate over the array of students 
	 @students.each do |student|
			student_data = [student[:name], student[:cohort]]
			csv_line = student_data.join(",")
			file.puts csv_line
		end
		file.close
		puts "The students have been saved into file."
	end

	def load_students(filename="students.csv")
		file = File.open(filename, "r")
		file.readlines.each { |line|
			name, cohort = line.chomp.split(",")
			@students << {name: name, cohort: cohort.to_sym}
		}
		file.close
		puts "The file was successfully loaded."
	end


	def try_load_students
		# filename is the first argument from the command line
		filename = ARGV.first
		return if filename.nil?
		# if true, exit the method
		if File.exists?(filename)
			load_students(filename)
			puts "Loaded #{@students.count} from #{filename}"
		else
			puts "Sorry, #{filename} doesn't exist."
			exit
		end
	end

 # read the input and save it as a variable
 def process(selection)
    case selection
      when "1"
        # input students
        input_students
      when "2"
				show_students
			when "3"
				save_students
			when "4"
				load_students
      when "9"
        # this will terminate the program
        exit
      else
        puts "I don't know what you meant, try again"
    end
	end


# refactored interactive menu
def interactive_menu
  loop do
    print_menu
		process(gets.chomp)  
  end
end

try_load_students
interactive_menu