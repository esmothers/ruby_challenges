#Blog Posting Test
class Blog #parent class 

	@@str_all_posts = []#class variable creating empty array which will hold all posts
	@@int_all_posts = 0 #class var. holding a count of created posts
	
	def self.all#Method calling post array
		@@str_all_posts 
	end
	
	def self.add(item)#Adds a post to both counters
		@@str_all_posts << item
		@@int_all_posts += 1
	end
	
	def self.publish#Adds publishing info to each post
		@@str_all_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Body:\n #{post.content}"
			puts "Publish Date:\n #{post.created_at}"
		end
	end

end

class BlogPost < Blog
=begin
	BAD

	def title#getter
		@title
	end
	
	def title=(title)#setter syntax
		@title = title
	end
	
	def created_at
		@created_at
	end
	
	def created_at=(created_at)
		@created_at = created_at
	end
	
	def content
		@content
	end
	
	def content=(content)
		@content = content
	end
	
	BETTER
	
	attr_writer :title, :content, :created_at
	attr_reader :title, :content, :created_at
=end

	#BEST

	attr_accessor :title, :content, :created_at
	def save
		BlogPost.add(self)
	end
	
	def self.create
		post = new
		puts "Name your blog post:"
		post.title = gets.chomp
		puts "Start typing content for your post:"
		post.content = gets.chomp
		post.created_at = Time.now
		post.save
		puts "Create another post? (Y/N)"
		create if gets.chomp.downcase == "y"
	end
	
end

BlogPost.create
str_all_posts = BlogPost.all
puts str_all_posts.inspect
BlogPost.publish
	
	
	
	