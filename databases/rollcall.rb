# require SQL gem
require 'sqlite3'

# create SQL database to store list of names
db = SQLite3::Database.new("rollcall.db")
db.results_as_hash = true

# create table
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS roll_sheet (
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	absent BOOLEAN
	)
SQL

# SQL insert/add new student to the roll_sheet table
insert_table_cmd = <<-SQL
	INSERT INTO roll_sheet (first_name, last_name, present) VALUES (?, ?, 0)
SQL 

# SQL remove student from roll_sheet
remove_student_cmd = <<-SQL
	DELETE FROM roll_sheet WHERE id = ?
SQL 

# SQL mark student present or absent
update_attendance_cmd = <<-SQL 
	UPDATE roll_sheet SET present = 1 WHERE id = ?
SQL 

# ruby method to add student to roll_sheet
def add_student(db, insert_table_cmd, first_name, last_name)
	db.execute(insert_table_cmd, [first_name, last_name])
end

# ruby method to remove student from roll_sheet
def remove_student(db, remove_student_cmd, id)
	db.execute(remove_student_cmd, id)
end

# ruby method to mark student absent 
def update_attendance(db, update_attendance_cmd, id)
	db.execute(update_attendance_cmd, id)
end 

# ruby print roll_sheet
def print_roll(db)
	roll = db.execute("SELECT * FROM roll_sheet")
	roll.each do |student|
		puts student["id"].to_s + student["first_name"] + " " + student["last_name"]
		if student["absent"] == 1
			puts "absent"
		elsif student["absent"] == 0
			puts "present"
		end
	end
end

# ruby method to create table
db.execute(create_table_cmd)

# INTERFACE
puts "Welcome to AttendanceBot 9000!"

valid_input = false
until valid_input
	puts "Would you like to (a)Add a student, (b)Remove a student, (c)Mark a student absent, or (d)See the roster? Press 'q' to quit."
	input = gets.chomp
	if input == "q"
		valid_input = true
	elsif input == "a"
		puts "Student's first name?"
		first_name = gets.chomp
		puts "Last name?"
		last_name = gets.chomp
		add_student(db, insert_table_cmd, first_name, last_name)
		puts "Student added to roll"
		print_roll(db)
	elsif input == "b"
		puts "Who do you want to remove?"
		puts "Current roster:"
		print_roll(db)
		puts "Input the ID number of the student you wish to remove from your class:"
		id = gets.chomp.to_i
		remove_student(db, remove_student_cmd, id)
		puts "Student removed from class"
		print_roll(db)
	elsif input == "c"
		puts "Who would you like to mark absent?"
		puts "Current roster:"
		print_roll(db)
		puts "Input the ID number of the student you wish to mark absent:"
		id = gets.chomp.to_i
		update_attendance(db, update_attendance_cmd, id)
		puts "Student marked absent"
		print_roll(db)
	elsif input == "d"
		puts "Current roster:"
		print_roll(db)
	else
		puts "Please input a valid choice"
	end
end

		
		