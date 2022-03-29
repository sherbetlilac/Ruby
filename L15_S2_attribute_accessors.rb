#A. Attribute Accessors method
#1. change set_name and get_name to attr_accessor instead

class Pet

    attr_accessor :name, :owner_name
    
    def bark
        return "rolfffff"
    end

    def praise
        return "Good boy!"
    end

end

#2.  Create new object

my_dog = Pet.new

my_dog.name= "Fredo"
dog_name = my_dog.name
my_dog.owner_name= "Jake"
dog_owner = my_dog.owner_name

puts " #{dog_name} says #{my_dog.bark}!"
puts " #{dog_owner} says #{my_dog.praise}!"
puts my_dog.inspect

#####################################################

#B. Attribute writers and readers method (setter and getter)
#1. change set_name to attr_writer and get_name to attr_reader instead

class Pet

    attr_writer :name, :owner_name
    attr_reader :name, :owner_name
    
    def bark
        return "rolfffff"
    end

    def praise
        return "Good boy!"
    end

end

#2.  Create new object

my_dog = Pet.new

my_dog.name= "Fredo"
dog_name = my_dog.name
my_dog.owner_name= "Jake"
dog_owner = my_dog.owner_name

puts " #{dog_name} says #{my_dog.bark}!"
puts " #{dog_owner} says #{my_dog.praise}!"
puts my_dog.inspect
