class Cli

  def start

    # => Introduction
    puts " "
    puts "                                           ".colorize(:color => :black, :background => :blue)
    puts "        Welcome to the Top List            ".colorize(:color => :black, :background => :blue)
    puts "                  of                       ".colorize(:color => :black, :background => :blue)
    puts "             Craft Beers!!!                ".colorize(:color => :black, :background => :blue)
    puts " --------------------------------------    ".colorize(:color => :black, :background => :blue)
    puts " "
    #-------------------------------------------------------------------------------
    # calling instance and class method
    Scraper.scrape_beer_list
    print_beers
    pick_your_craft
    # print_type_of_beer
  end

  def pick_your_craft

    input = ""
    while input != "exit" do

        puts " "
        puts "Choose your BEER!".colorize(:color => :blue)
        puts "Enter a number or type 'exit' to exit.".colorize(:color => :blue)
        puts " "

        input = gets.strip.downcase

        # the beers attributes and info
        if (1..Beer.all.count).include?(input.to_i)
          Scraper.scrape_beer_info(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].style

          puts " "
          print "Name: ".colorize(:color => :green)
          print "#{Beer.all[input.to_i-1].name}".colorize(:color => :red)
          puts " "
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:color => :green)
          print "Style: ".colorize(:color => :green)
          print "#{Beer.all[input.to_i-1].style}".colorize(:color => :red)
          puts " "
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:color => :green)
          print "Company: ".colorize(:color => :green)
          print "#{Beer.all[input.to_i-1].company}".colorize(:color => :red)
          puts " "
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:color => :green)
          print "ABV: ".colorize(:color => :green)
          print "#{Beer.all[input.to_i-1].abv}".colorize(:color => :red)
          puts " "
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:color => :green)
          print "Location: ".colorize(:color => :green)
          print "#{Beer.all[input.to_i-1].location}".colorize(:color => :red)
          puts " "
          puts " "
        #-------------------------------------------------------------------------------
        # error message to try again.
        elsif input != "exit"
          puts " "
          puts "                                    ".colorize(:color => :white, :background => :red)
          puts " INCORRECT ENTRY! Please try again! ".colorize(:color => :black, :background => :red)
          puts "                                    ".colorize(:color => :white, :background => :red)
          puts " "
        #-------------------------------------------------------------------------------
        end
      end
  end

  def print_beers

    # adds a number list with the beer name.
    Beer.all.each.with_index(1) do |beer, index|
      print "#{index}. ".colorize(:color => :blue)
      print "#{beer.name}".colorize(:color => :red)
      puts " "
      puts ""
    end
  end

  # def print_type_of_beer(input = "")
  #
  #   input = gets.strip
  #
  #   if input == "yes"
  #     puts "hello"
  #   end
  # end

end
