# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    def initialize(name)
        @name = name
        @color = "Silver"
    end

    def say(something)
        return "*~* #{something}"
    end
end

#Tests
unicorn1 = Unicorn.new("Penelope")  # Creates a new object instance from the Unicorn class
p unicorn1 # Prints: #<Unicorn:0x000000015497fb08 @name="Penelope", @color="Silver">
p unicorn1.say("You have to come with us to candy mountain Charlie!") # Prints: "*~* Let's go to candy mountain Charlie!"

unicorn2 = Unicorn.new("Francisco") # Creates a new object instance from the Unicorn class
p unicorn2 # Prints: #<Unicorn:0x000000011d857370 @name="Francisco", @color="Silver">
p unicorn2.say("Yea Charlie! It'll be an adventure Charlie!") #Prints: "*~* Yea Charlie! It'll be an adventure Charlie!"


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :thirsty, :pet

    def initialize(name, pet = "Bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink(drank)
        if drank
            @thirsty = false
            return "Still thirsty? #{@thirsty}."
        end
    end
end

# Tests
vampire1 = Vampire.new("Vladimir") # Creates a new object instance vampire1 from the class Vampire
p vampire1 # Prints: #<Vampire:0x000000013a188bd0 @name="Vladimir", @pet="Bat", @thirsty=true>
p vampire1.drink(true) # Prints: "Still thirsty? false."
p vampire1.thirsty # Accessible attribute value via the attr_reader. Prints: false

vampire2 = Vampire.new("Veronica", "Snake") # Creates a new object instance vampire2 from the class Vampire
p vampire2 # Prints: #<Vampire:0x000000013a1888b0 @name="Veronica", @pet="Snake", @thirsty=true>
p vampire2.thirsty # Prints: true
p vampire2.pet # Accessible attribute value via the attr_reader. Prints: "Snake"



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    def initialize(name,rider,color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(times_eaten)
        if times_eaten >= 4
            @is_hungry = false
            return "Is #{@name} still hungry? #{@is_hungry} - they're full!"
        else
            return "Is #{@name} still hungry? #{@is_hungry} - find food!."
        end
    end
end

# Tests:
dragon1 = Dragon.new("Fire","Rick","Ruby-red") # Creates a new object instance dragon1 from the Dragon class
p dragon1 # Prints: #<Dragon:0x000000013a97ae10 @name="Fire", @rider="Rick", @color="Ruby-red", @is_hungry=true>
p dragon1.eat(3) # Prints: "Is Fire still hungry? true - find food!."

dragon2 = Dragon.new("Ice","Morty","Saphire-blue") # Creates a new object instance dragon2 from the Dragon class
p dragon2 # Prints: #<Dragon:0x000000013a97ab18 @name="Ice", @rider="Morty", @color="Saphire-blue", @is_hungry=true>
p dragon2.eat(5) # Prints: "Is Ice still hungry? false - they're full!"



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :disposition
    
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end
  
    def celebrate_birthday()
        @age = @age + 1
    end
    
    def check_age()
      if @age > 33 && @age < 101
        @is_adult = true 
        return "#{@is_adult} - I am an adult"
      elsif @age >= 101
        @is_old = true
        return "#{@is_old} - I am old!"
      end
    end
  
    def check_ring()
      if @name == "Frodo"
        @has_ring = true
      end
    end
  end    
  
  # Tests:
  hobbit1 = Hobbit.new("Frodo","obsessed") # Creates a new object instance hobbit1 from the Hobbit class.
  p hobbit1 # Prints: #<Hobbit:0x00007fa288c35398 @name="Frodo", @disposition="obsessed", @age=0, @is_adult=false, @is_old=false, @has_ring=false>
  p hobbit1.celebrate_birthday # Prints: 1
  p hobbit1.celebrate_birthday # Prints: 2
  p hobbit1.check_ring # Prints: true
  p hobbit1.disposition #Prints "Obsessed"
  
  hobbit2 = Hobbit.new("Beorn","Wise", 123) # Creates a new object instance hobbit2 from the class Hobbit
  p hobbit2 # Prints: #<Hobbit:0x00007f5e3e4f9310 @name="Beorn", @disposition="Wise", @age=123, @is_adult=false, @is_old=false, @has_ring=false>
  p hobbit2.check_age #Prints: "true - I am old!"
  
  hobbit3 = Hobbit.new("Samwise","Anxious",45) # Creates a new object instance hobbit3 from the class Hobbit
  p hobbit3 # Prints: #<Hobbit:0x00007f8f02008dc0 @name="Samwise", @disposition="Anxious", @age=45, @is_adult=false, @is_old=false, @has_ring=false>
  p hobbit3.check_age # Prints: "true - I am an adult"