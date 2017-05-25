class People
def initialize(firstname, lastname)
  @firstname = firstname
  @lastname = lastname
end

def fullname
  "#{@firstname} #{@lastname}"
end

end



class Student < People

  def initialize(firstname, lastname)
      super(firstname,lastname)
end

  def learn
    puts "I get it"
  end

def greeting
  "hi my name is #{fullname}"
end
end


class Instructor < People

def initialize(firstname, lastname)
  super(firstname,lastname)
end

def teach
  "Everything in Ruby is an object"
end

def greeting
  "hi my name is #{fullname}"
end

end

puts chris = Instructor.new('chris','smith')
puts chris.greeting
puts chris.teach

puts cristina = Student.new('susie','smith')
puts cristina.greeting
puts cristina.learn

#It doesnt work because the student and teacher are not parents therefore there methods do not work for each otehr
