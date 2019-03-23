#What is a Class?

#using the example of a new employee....we would need to gather
# Person
# name
# email
# phone number

#story all the employee information on a computer

#contractors are not really full time employees, but they are real people

# Employees --> Person
# Contractors --> Person
# Interns --> Person

# An input form to capture info whenever a person is hired
class Person 
    def initialize(name, email, phonenumber)
        @name = name
        @email = email
        @phonenumber = phonenumber
    end 
    def name
        @name
    end
    
    def email
        @email
    end 
    
end 

# how to call the class

#Person One
person_one = Person.new('Bob', 'bob@gmail.com', '394-232-2314')
puts person_one.name
puts person_one.email

#Person Two
person_two = Person.new('Dan', 'dan@gmail.com', '838-232-2314')
puts person_two.name
puts person_two.email

#creating a new Employee class, extending the class from Person
class Employee < Person
   #unique characteristic that's only for Employee
   def set_benefits(has_benefits) 
       @hbenefits = has_benefits
       
       #If (has_benefits ==null)
       #@benefits = true
       
   end 
   def get_benefits
       @benefits
   end 
end

class Contractor < Person
    def restrictions(has_restrictions)
        @restrictions = has_restrictions
    end
    
    def restrictions
        @restrictions
    end 
end
    
#Lucy is new 
#Lucy, 'lucy@gmail.com', '343-343-2253'

employee_one = Employee.new('Lucy', 'lucy@gmail.com', '343-343-2253')
employee_one.set_benefits(true)

puts employee_one.get_benefits

#in the future, if Lucy doesn't want benefits...
employee_one.set_benefits(false)
puts employee_one.get_benefits

employee_two = Employee.new('Elena', 'elena@gmail.com', '343-342-2253')
employee_two.set_benefits(true)

#shorter route
class Employee < Person
    attr_accessor :benefits
end

employee_three = Employee.new('Elena', 'elena@gmail.com', '231')
puts employee_three.benefits = true
puts employee_three.benefits

