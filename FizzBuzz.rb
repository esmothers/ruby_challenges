#Fizzbuzz Challenge
number = 1
 
while number < 101
	if number%3 == 0 && number%5 == 0 #using syntax "(number%3 && number%5) = 0" generated unexpected results
		puts "FizzBuzz"
	elsif number%5 == 0
		puts "Buzz"
	elsif number%3 == 0
		puts "Fizz"
	else 
		puts number
	end
	number += 1
end
