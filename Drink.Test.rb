#This is officially my first Ruby code!!!
age = 1
myString =""

while age <= 21
  myString = "You are only "
  myString = myString + age.to_s
  myString = myString + " years old. Not quite old enough yet."
  puts myString
  age += 1
  #count = 1
  #while count <= 10000
  #  puts count
  #  count += 1
  #end
end

puts "You can finally drink a beer!"