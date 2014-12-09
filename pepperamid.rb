
class Make_soda_pyramid

    def initialize(bonus, soda_price)
        @bonus = bonus
        @soda_price = soda_price

        @can = "[]"
        @result = []
        @cans_to_display = []


        @num_of_sodas_on_lvl = 1 # Initialize Variable
        @level = 1               # Initialize Variable
        @total_number_of_sodas = 0
        @remaining = 0

        @sodacan_level_price = @soda_price
        @bonus -= @soda_price
    end

    def calc_sodamid
        while @bonus > @sodacan_level_price
            # puts "Remaining Money: #{bonus}"
            # puts "Price this level: #{@sodacan_level_price}"
            # puts "Number of sodas on this level #{@num_of_sodas_on_lvl}"

            @remaining = @bonus
            @total_number_of_sodas += @num_of_sodas_on_lvl
            @result << "Number of sodas on Level #{@level}: #{@num_of_sodas_on_lvl}\n"

            @cans_to_display << @can * (@num_of_sodas_on_lvl / @level)

            @level += 1
            @num_of_sodas_on_lvl = @level * @level

            @sodacan_level_price = @soda_price * @num_of_sodas_on_lvl
            @bonus -= @sodacan_level_price
        end
    end


    def soda_pyramid
        @cans_to_display.each do |cans|
            puts cans.center(100)
        end
    end

    def num_of_levels
        @result.count
    end

    def sodas_on_levels
        @result
    end

    def display
        soda_pyramid
        print "Number of Levels:"
        puts num_of_levels
        puts ""
        puts sodas_on_levels
        puts ""
        puts "Total Number of sodas Used: #{@total_number_of_sodas}"
        puts "Bonus Remaining: #{@remaining}"
    end

end

# sodaamid = Make_soda_pyramid.new(5000,2)
# sodaamid.calc_sodamid
# p sodaamid.num_of_levels
