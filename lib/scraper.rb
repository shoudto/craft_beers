class Scraper

  def self.scrape_beer_list

    html = open("https://www.beeradvocate.com/beer/top-rated/")
    doc = Nokogiri::HTML(html)

      beer_list = doc.css("tr")


      # => iteration to scrape the text name of the beer
      beer_list.drop(1).each do |beer|
        brew = Beer.new
        brew.name = beer.css("a b").text
      end
      #-------------------------------------------------
  end

  def self.scraper_beer_info(beer)

    # adding attributes with the scrape website

    html = open("https://www.beeradvocate.com")
    doc = Nokogiri::HTML(html)

  end
end
