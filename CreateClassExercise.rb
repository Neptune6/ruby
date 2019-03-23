#Create a class called Person
#Create another class called Student that extends person
#Student class should have grade, classes[array], schoolname

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
    
    def phonenumber
        @phonenumber
    end
end 

class Student < Person
    def initialize(name, email, phonenumber, grade, classes, schoolname)
        super(name, email, phonenumber)
        @grade = grade
        @classes = classes
        @schoolname = schoolname
    end
    attr_accessor :grade
    attr_accessor :classes
    attr_accessor :schoolname
    
end

student_one = Student.new('Chris','chris@gmail.com', '848-232-4434', 6,[], 'High School')
puts student_one.grade
puts student_one.name

#Adding multiple students
student_two = Student.new('Meg','meg@gmail.com', '838-232-4434', 6,[], 'Baker High School')
student_three = Student.new('Doug','Doug@gmail.com', '838-232-4434', 6,[], 'Baker High School')
student_four = Student.new('Bem','Bem@gmail.com', '838-232-4434', 6,[], 'Baker High School')

class School
    attr_accessor :students
end

baker_school = School.new()
baker_school.students = [] #0

baker_school.students = [student_two] #1

puts baker_school.students.length

baker_school.students.push(student_three, student_four)
puts baker_school.students.length