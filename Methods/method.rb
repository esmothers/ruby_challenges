def always_three(num)
   ((((num + 5) * 2) - 4) / 2 - num).to_s 
end
puts "Give me a number: "
input = gets.to_i
puts "Always " + always_three(input).to_s