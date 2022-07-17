# Q1:
class User

  @@name = 'user'

  def initialize(n)
    @name = n
  end

  def self.getClassVariableName
    @@name
  end  

  def self.setClassVariableName=(newName)
    @@name = newName
  end

  def getName
    @name
  end

  def setName=(value)
    @name = value
  end

  user1 = User.new("Monica")
  # puts user1
  # puts user1.getName
  # puts user1.setName=("Hadeer")
  # puts user1.getName
  # puts User.getClassVariableName
  # puts User.setClassVariableName=("ITI")
  # puts User.getClassVariableName
end


##################################################################
#Q2:

class Maths

  def calc(num1, num2, operator)

    begin

        if !(num1.is_a? Numeric) || !(num2.is_a? Numeric) 
          raise 'Invalid inputs!'

        elsif !(["+", "-", "*" ,"/"].include? operator)
         raise 'not supported operator!'

        else 
            op = operator
            case op
              when "+" then
                # puts "result of summition is : #{num1+num2}"
                eval("num1 + num2")
              when "-" then
                # puts "result of subtraction is : #{num1-num2}"
                eval("num1 - num2")
              when "*" then
                # puts "result of muliplication is : #{num1*num2}" 
                eval("num1 * num2") 
              when "/" then
                if num2 == 0
                  raise 'Invalid division by zero!'
                else  
                #  puts "result of division is : #{num1/num2}"  
                eval("num1 / num2")
                end
            end
        end    
      end

    rescue Exception => e
         puts e.message
         puts e.backtrace.inspect  
    end
end

obj1 = Maths.new
# puts obj1.calc(4,8,"!")
# puts obj1.calc("4",8,"+")
# puts obj1.calc(4,0,"/")
# puts obj1.calc(4,8,"+")
# puts obj1.calc(4,8,"-")
# puts obj1.calc(4,8,"*")
# puts obj1.calc(4,8,"/")


##################################################################
# Q3:
module CustoModule

  class Person
    require 'date'
    attr_accessor :fname, :lname, :birth_date, :age

    def initialize()
        @fname = ""
        @lname = ""
        @birth_date = Date.today
        @age = 0 
    end
  

    def age(dob)
      now = Time.now.utc.to_date
      return now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end


    def get_person_data()
      puts "Enter your first name please, :"
      @fname = gets.chomp
      puts "Enter your last name please, :"
      @lname = gets.chomp
      puts "Enter your birth_date please, :"
      @birth_date = Date.parse(gets.chomp)
      @age = age(@birth_date)
      
    end


    def welcome
      puts "Welcome #@fname #@lname in my CustoModule"
    end

  end

end  



person = CustoModule::Person.new()
person.get_person_data()
puts person.age
puts person.welcome()
