class Organism
    attr_accessor :height, :weight

    def walk 
        puts "Walking to YOU!"
    end

    def eat
        puts "nom nom nom nom"
    end

    def kill
        puts "bloop"
    end

    def describe
        puts "I am #{height} metres tall and weigh #{weight} kg"
    end
end

class Blasttwozor < Organism
end

class Vneuder < Organism
end

class Chartoist < Organism
end

class Planktonist < Organism
end

class Charwomander < Organism
end

class Spaceship
    attr_accessor :power, :gas, :passengers

    def blast_off()
        until @gas ==  0
            @gas -= rand(1..@gas)
            puts "Gas remaining: #{@gas}"
        end
        puts "You have arrived!"
        land_ship()
    end

    def board_ship(organisms)
        @passengers = organisms
    end

    def land_ship()
        @passengers = []
        puts "All passengers off!"
    end
end

class Kepler
    attr_reader :moons, :distance_from_sun, :atmosphere, :shape, :inhabitants

    def initialize
        @moons = 10
        @distance_from_sun = "200km"
        @atmosphere = "very cool"
        @shape = "square"
    end

    def board_planet(organisms)
        @inhabitants = organisms
        puts "Welcome to planet Kepler-1649c!"
    end

    def time_jump()
        new_inhabitants = []
        @inhabitants.each do |org|
            result = rand(-100..100)
            new_count = @inhabitants.count(org) + result
            new_count.times { new_inhabitants << org.dup}
        end
        @inhabitants = new_inhabitants
        show_inhabitants
    end

    def show_inhabitants
        inhabitants_count = Hash.new(0)

        @inhabitants.each do |org|
            case org
            when Blasttwozor
                inhabitants_count["Blasttwozors"] += 1
            when Vneuder
                inhabitants_count["Vneuders"] += 1
            when Chartoist 
                inhabitants_count["Chartoists"] += 1
            when Planktonist 
                inhabitants_count["Planktonists"] += 1
            when Charwomander 
                inhabitants_count["Charwomanders"] += 1
            end
        end
        
        puts "Time jumping...these are the remaining organisms:"
        if inhabitants_count.empty?
            puts "All organisms are DEAD"
        else
            inhabitants_count.each { |x,y| puts "#{y} #{x}" }
        end

    end
end

blastwozor = Blasttwozor.new
blastwozor.height = 10
blastwozor.weight = 20

vneuder = Vneuder.new
vneuder.height = 21
vneuder.weight = 520

chartoist = Chartoist.new
chartoist.height = 4
chartoist.weight = 8

planktonist = Planktonist.new
planktonist.height = 1
planktonist.weight = 16

charwomander = Charwomander.new
charwomander.height = 65
charwomander.weight = 89

spaceship = Spaceship.new
spaceship.gas = 1000
spaceship.power = 500

kepler_1649c = Kepler.new

organisms = [blastwozor, vneuder, chartoist, planktonist, charwomander]
spaceship.board_ship(organisms)
spaceship.blast_off
kepler_1649c.board_planet(organisms)
kepler_1649c.time_jump