class Cli

  def start

    # => Introduction of the code.
    puts " "
    puts "Welcome to the Top List Craft Beers!!!"
    puts "--------------------------------------"
    puts " "
    #---------------------------------------------

    # => Adding a list of beers from my scraper class
    Scraper.scrape_beer_list
    print_beers
    pick_your_craft
  end

  def pick_your_craft

    input = ""
    while input != "exit" do

        puts "Choose your BEER!"
        puts "Enter a number or type 'exit' to exit."
        puts " "

        input = gets.strip.downcase

        if (1..Beer.all.count).include?(input.to_i)
          Scraper.scrape_beer_info(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].style

          puts " "
          puts "Name: #{Beer.all[input.to_i-1].name}"
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Style: #{Beer.all[input.to_i-1].style}"
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Company:#{Beer.all[input.to_i-1].company}"
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "ABV: #{Beer.all[input.to_i-1].abv}"
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts "Location: #{Beer.all[input.to_i-1].location}"
          puts " "

        elsif input != "exit"

          puts " "
          puts "ERROR!"
          puts " "

        end
      end
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
end
