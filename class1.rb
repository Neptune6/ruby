#Testing out Ruby
nickname = 'Bob'

number = 2

differentNumber = 1.0

nickname = 'Dan'

puts nickname

#Write a function that multuplies two numbers
def multiply(inputOne, inputTwo)
    inputOne * inputTwo
end

puts multiply(5, 9) #puts or print can be used for output. 

#Wite a function that takes in a number and returns true if it is divisible by three
#example if value is 9, the fuction output should be true. If 10, then should be false

def is_divisible_by_three(input)
    input % 3 == 0
end

#output
puts is_divisible_by_three(9)
puts is_divisible_by_three(10)

#an IF, then example in ruby
if 0 > 10
    puts 'Should print true'
else
    puts 'Should return false'
end

#another example
bag = ['pens',1,2,{}]

puts bag