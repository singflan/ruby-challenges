class Blog

	@@total_posts = 0
	@@all_posts_array = []

	def self.all
		@@all_posts_array
	end
	
	def self.add(new_post) # I had to look at the challenge answer to know to use self. 
		@@total_posts++
		@@all_posts_array += new_post
	end
	
	# I got this code from the answer as well.
	def self.publish 		
		@@all_posts_array.each do |blog_post|
			puts "Title:\n #{blog_post.getTitle}"
			puts "Body:\n #{blog_post.getContent}"
			puts "Publish Date:\n #{blog_post.getPostDate}"
		end
	end
	
end

class BlogPost < Blog

	def self.createPost 
		blog_post = new
		puts = "What do you want to name your post: "
		blog_post.setTitle = gets.chomp
		puts = "What is your post's content: "
		blog_post.setContent = gets.chomp
		blog_post.setPostDate = Time.now
		post.save
		print "Do you want to create another blog post? (Y/N)" 
		if (gets.chomp.downcase = n)
			createPost
		end
	end
	
	def setTitle(String postTitle)
		String @title = postTitle
	end
	
	def getTitle
		return @title
	end
	
	def setContent(String postContent)
		String @content = postContent
	end
	
	def getContent
		return @content
		
	def setPostDate(date)
		@post_date = date
	end
	
	def getPostDate
		return @date
	end
	
	def save 
		BlogPost.add(self)
	end
end

BlogPost.create
# I took the rest of the code from the challenge answer as well. 
all_posts_array = BlogPost.all
puts all_posts_array.inspect
BlogPost.publish