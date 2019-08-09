class Cli

  def start

    # => Introduction
    puts " "
    puts "Welcome to the Top List Craft Beers!!!".colorize(:color => :green)
    puts "--------------------------------------".colorize(:color => :green)
    puts " "
    #-------------------------------------------------------------------------------
    # calling instance and class method
    Scraper.scrape_beer_list
    print_beers
    pick_your_craft
  end

  def pick_your_craft

    input = ""
    while input != "exit" do

        puts " "
        puts "Choose your BEER!".colorize(:color => :green)
        puts "Enter a number or type 'exit' to exit.".colorize(:color => :green)
        puts " "

        input = gets.strip.downcase

        # the beers attributes and info
        if (1..Beer.all.count).include?(input.to_i)
          Scraper.scrape_beer_info(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].style

          puts " "
          puts "Name: #{Beer.all[input.to_i-1].name}".colorize(:color => :green)
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Style: #{Beer.all[input.to_i-1].style}".colorize(:color => :green)
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Company:#{Beer.all[input.to_i-1].company}".colorize(:color => :green)
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "ABV: #{Beer.all[input.to_i-1].abv}".colorize(:color => :green)
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Location: #{Beer.all[input.to_i-1].location}".colorize(:color => :green)
          puts " "
        #-------------------------------------------------------------------------------
        # error message to try again.
        elsif input != "exit"
          puts " "
          puts "INCORRECT ENTRY! Please try again".colorize(:color => :white, :background => :red)
          puts " "
        #-------------------------------------------------------------------------------
        end
      end
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}".colorize(:color => :red)
    end
  end
end
