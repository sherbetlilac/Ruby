#1. create parent class

class Pet
    def set_name=(pet_name)
        @name = pet_name
    end

    def get_name
        return @name
    end

    def set_owner=(owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

end

#2. create sibling class

class Dog < Pet
    
    def bark
        return "rolfffff"
    end

    def praise
        return "Good boy!"
    end
end

class Cat < Pet

    def pur
        return "meeeoowwww"
    end

    def pat
        return "Good girl!"
    end

end

#3. create object for both Dog and Cat
# RMB to create unique variable for both pet name and owner name under Dog and Cat each.
# using back parent class variable (pet_name or owner_name) will confuse ruby as we have two siblings using the same variable.

my_dog = Dog.new
my_dog.set_name= "Fredo"
dog_name = my_dog.get_name
my_dog.set_owner= "Jake"
dog_owner = my_dog.get_owner

puts " #{dog_name} says #{my_dog.bark}!"
puts " #{dog_owner} says #{my_dog.praise}!"


my_cat = Cat.new
my_cat.set_name= "Milko"
cat_name = my_cat.get_name
my_cat.set_owner= "Alica"
cat_owner = my_cat.get_owner

puts " #{cat_name} says #{my_cat.pur}!"
puts " #{cat_owner} says #{my_cat.pat}!"

#4. Inspect the objects created for each class.

puts my_dog.inspect
puts my_cat.inspect