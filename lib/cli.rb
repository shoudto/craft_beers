class Cli

  def start

    # => Introduction of the code.
    puts " "
    puts "Welcome to the Top List Craft Beers!!!"
    puts "--------------------------------------"
    puts " "
    #---------------------------------------------
    Scraper.scrape_beer_list 
    # => Adding a list of beers from my scraper class

  end

end
