count = 1
myString = ""

#Just something foe the user to see it's working
while count <= 10
    myString = myString + " X "
    puts myString + "   Accessing File   " + myString
    count += 1
end

#File.open("path/to/file", "w") { |file|  }
#File.foreach("path/to/file") { |line|  }
#File.read("path/to/file")

File.foreach('ReadFileTest.txt') do |line|
	puts line
	p line
	p line.chomp
	#Puts elements into an array
	#p line.split
end

puts "Does this file exist"
begin #This will catch all errors
	File.foreach('donotexist.txt') do |line|
		puts line.chomp
	end
rescue Exception => e
	puts e.message
	puts "Let's pretend this didn't happen..."
end

puts "Still Executing"
#This will not catch all errors
if File.exist? 'donotexist.txt'
	File.foreach('donotexist.txt') do |line|
		puts line.chomp
	end
end
puts "Still Executing"

time = Time.new
puts time.inspect

File.open('ReadFileTest.txt', "w") do |file|
	file.puts time.inspect
	file.puts ""
	file.puts "The time is " + time.hour.to_s + ":" + time.min.to_s + " on " + time.month.to_s + "/" + time.day.to_s + "/" + time.year.to_s
	file.puts ""
	file.puts "Try to write Env Vars.............."
	file.puts "GIT_HOME: " + ENV["GIT_HOME"]
	file.puts "WEB_URL: " + ENV["WEB_URL"]
	file.puts "PATH: " + ENV["PATH"]
	file.puts ""
	file.puts "Have a great day!!!"
end




