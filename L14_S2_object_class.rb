# 1. create new template called Dog using class

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
    
    def bark
        return "rolfffff"
    end

    def praise
        return "Good boy!"
    end

    def pur
        return "meeeoowwww"
    end

    def pat
        return "Good girl!"
    end

end

#2.  Create new object (subject title my_dog) using your new class (Pet)
# template will be tagged under my_dog, etc... (based on your subject naame.)

my_dog = Pet.new

# input dog's name using set_name method, and retrieve name using get_name method
my_dog.set_name= "Fredo"
pet_name = my_dog.get_name

# input owner's name using set_owner, and retrieve name using get_owner method
my_dog.set_owner= "Jake"
owner_name = my_dog.get_owner

# print message with pet_name and owner_name 
puts " #{pet_name} says #{my_dog.bark}!"
puts " #{owner_name} says #{my_dog.praise}!"


#3.  Create second object (subject title my_cat) using your new class (Pet)
# template will be tagged under my_cat, etc... (based on your subject naame.)

my_cat = Pet.new

# input cat's name using set_name method, and retrieve name using get_name method
my_cat.set_name= "Milko"
pet_name = my_cat.get_name

# input owner's name using set_owner, and retrieve name using get_owner method
my_cat.set_owner= "Alica"
owner_name = my_cat.get_owner

# print message with pet_name and owner_name 
puts " #{pet_name} says #{my_cat.pur}!"
puts " #{owner_name} says #{my_cat.pat}!"

#4. inspect the number of objects created under this class
puts my_dog.inspect
puts my_cat.inspect