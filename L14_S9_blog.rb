#1. Create class for Blog, insert counter to count total blogpost.

class Blog

    @@all_blog_posts = []
    @@num_blog_posts = 0

    def self.all
        @@all_blog_posts
    end

    def self.add(thing)
        @@all_blog_posts << thing
        @@num_blog_posts += 1
    end

    def self.publish
        @@all_blog_posts.each do |post|
            puts "Title:\n #{post.get_title}"
            puts "Body:\n #{post.get_content}"
            puts "Publish Date:\n #{post.get_publishdate}"
        end
    end

end

#2. Create class for Blogpost nested under Blog

class Blogpost < Blog

    def self.create
        post = new
        puts "Name your blog post:"
        post.get_title = gets.chomp
        puts "Your blog post content:"
        post.get_content = gets.chomp
        post.get_publishdate = Time.now
        post.save
        puts "Do you want to create another post? [Y/N]"
        #returns if not 'y' and stops the rest of the script from running.
        #otherwise, continues to run 'create' method.
        create if gets.chomp.downcase == 'y'
    end

    def set_title=(title_name)
        @title = title_name
    end

    def get_title
        return @title
    end

    def set_content=(content_details)
        @content = content_details
    end

    def get_content
        return @content
    end

    def set_publishdate(publish_date)
        @publishdate = publish_date
    end

    def get_publishdate
        return @publishdate

    def save
        BlogPost.add(self)
    end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish