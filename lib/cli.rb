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

    #----------------------------------------------
    input = ""
    while input != "exit" do

        puts "Choose your BEER!"
        puts "Enter a number or type 'exit' to exit."
        puts " "

        input = gets.strip.downcase
        binding.pry 
        Scraper.scrape_beer_info(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].style
    end
  end

  def pick_your_craft
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end

end
