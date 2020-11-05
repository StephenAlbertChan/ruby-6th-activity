module Action
    def walk
        puts "#{@name} is walking"
    end

    def run
        puts "#{@name} is running"
    end
end

class Pokemon
    def initialize(name)
        @name = name
    end

    include Action
end

class Pokemon_type
    def element_type(element)
        element.element_type
    end
end

class Pikachu < Pokemon
    def attack
        puts "Pikachu used Volt tackle!"
    end

    def element_type
        puts "Pikachu is an electric type"
    end
end

class Charmander < Pokemon
    def attack
        puts "Charmander used Fire Blast!"
    end

    def element_type
        puts "Charmander is a fire type"
    end
end


class Squirtle < Pokemon
    def attack
        puts "Squirtle used Hydro Pump!"
    end

    def element_type
        puts "Squirtle is a water type"
    end
end


class Bulbasaur < Pokemon
    def attack
        puts "Bulbasaur used Solarbeam!"
    end

    def element_type
        puts "Bulbasaur is a grass type"
    end
end

pikachuType = Pokemon_type.new
charmanderType = Pokemon_type.new
squirtleType = Pokemon_type.new
bulbasaurType = Pokemon_type.new

pikachu = Pikachu.new("Pikachu")
charmander = Charmander.new("Charmander")
squirtle = Squirtle.new("Squirtle")
bulbasaur = Bulbasaur.new("Bulbasaur")

pikachu.walk
pikachu.run
pikachu.attack
pikachuType.element_type(pikachu)
puts("================================")
charmander.attack
charmander.walk
charmander.run
charmanderType.element_type(charmander)
puts("================================")
squirtle.attack
squirtle.walk
squirtle.run
squirtleType.element_type(squirtle)
puts("================================")
bulbasaur.attack
bulbasaur.walk
bulbasaur.run
bulbasaurType.element_type(bulbasaur)