#1. create parent class

class Pet
    def set_name=(name)
        @name = name
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

#2. create sibling class, using < to tag then under parent

class Ferret < Pet
    def squeal
        return "squeeeee"
    end
end

class Chincilla < Pet
    def roar
        return "eeeeep"
    end
end

class Parrot < Pet
    def tweet
        return "chirp"
    end
end

#3. create object for each class

my_ferret = Ferret.new
my_ferret.set_name = "Freddo"
ferretname = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name = "Budgie"
parrotname = my_parrot.get_name

my_chincilla = Chincilla.new
my_chincilla.set_name = "Dali"
chincillaname = my_chincilla.get_name


puts "#{ferretname} says #{my_ferret.squeal},
#{parrotname} says #{my_parrot.tweet},
and #{chincillaname} says #{my_chincilla.roar}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect