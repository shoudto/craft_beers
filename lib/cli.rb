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

  end

  def pick_your_craft
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end

end
