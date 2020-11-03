module Action
    def walk
        puts "#{@name} is walking"
    end

    def run
        puts "#{@name} is running"
    end
end

class Pokemon 
    def initialize(name,type,level)
        @name = name
        @type = type
        @level = level
    end

    def type(type)
        type.type
    end
end

class Pikachu < Pokemon
    def attack
        puts "Pikachu used Volt tackle!"
    end

    def type
        puts "is an #{@type} type"
    end

    include Action
end

class Charmander < Pokemon
    def attack
        puts "Pikachu used Fire Blast!"
    end

    def type
        puts "is a #{@type} type"
    end

    include Action
end


class Squirtle < Pokemon
    def attack
        puts "Squirtle used Hydro Pump!"
    end

    def type
        puts "is a #{@type} type"
    end

    include Action
end


class Bulbasaur < Pokemon
    def attack
        puts "Bulbasaur used Solarbeam!"
    end

    def type
        puts "is a #{@type} type"
    end

    include Action
end

Pikachu = Pikachu.new("Pikachu", "Electric", 5)
Charmander = Charmander.new("Charmander", "Fire", 5)
Squirtle = Squirtle.new("Squirtle", "Water", 5)
Bulbasaur = Bulbasaur.new("Bulbasaur", "Grass", 5)

Pikachu.attack
Charmander.run
Squirtle.walk
Bulbasaur.type