class Pet
=begin

	These former accessors are clearly inferior.
	I'm simply including them for the sake of being thorough.
	
	attr_writer :name, :owner
	attr_reader :name, :owner
=end

	attr_accessor :name, :owner
	
end


class Doggy < Pet

	def bark
		return "yip, yip!"
	end
	
end


class Kitty < Pet

	def meow
		return "mew"
	end
	
end

my_doge = Doggy.new
my_doge.name = "Buddy"
d_name = my_doge.name
my_doge.owner = "Ev"
my_name = my_doge.owner
yelp = my_doge.bark
my_cat = Kitty.new
my_cat.name = "Kit-Kit"
c_name = my_cat.name
meow = my_cat.meow

puts "My pup's name is #{d_name}. He's a very good boy.
I'm his owner. My name's #{my_name}. When #{d_name} gets excited, 
he goes '#{yelp}'. I also have a cat. Her name's #{c_name}.
When stroked, she lets out a satisfied #{meow}."
puts my_doge.inspect
puts my_cat.inspect
