class Person
  #attr_accessor :name, #age
  def initialize (name, ageVar)
    @name = name
    self.age = ageVar
    puts age
  end
  def name #getter
    @name
  end
  def name= (new_name) #setter
    @name = new_name
  end
  #getter for age
  attr_reader :age
  #def age 
  #  @age
  #end
  def age= (new_age) #setter
    @age ||= 5 #default vlue
    @age = new_age unless new_age > 120
  end
  def get_info
    @additional_info = "Interesting"
    "Name: #{@name}, age: #{@age}"
  end
end

person1 = Person.new("Joe", 14)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables
puts person1.name
puts person1.age

person1 = Person.new("Kim", 145)
puts "My age is #{person1.age}"
person1.age = 125
puts person1.name
puts person1.age
person1.age = 10
puts person1.age






module Sports
  class Match
    attr_accessor :score
  end
end

module Patterns
  class Match
    attr_accessor :complete
  end
end

match1 = Sports::Match.new
match1.score = 45
puts match1.score

match2 = Patterns::Match.new
match2.complete = true
puts match2.complete
