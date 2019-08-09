class Scraper

  def self.scrape_beer_list

    # the source and website used to scrape
    html = open("https://www.beeradvocate.com/beer/top-rated/")
    doc = Nokogiri::HTML(html)

      beer_list = doc.css("tr")


      # => iteration to scrape the name of the beer and url of the beer
      
      beer_list.drop(1).each do |beer|
        brew = Beer.new
        brew.name = beer.css("a b").text
        brew.url = beer.css("a").attr('href').value
      end
      #-------------------------------------------------
  end

  def self.scrape_beer_info(beer)

    # adding attributes with the second scrape website

    html = open("https://www.beeradvocate.com#{beer.url}")
    doc = Nokogiri::HTML(html)

    beer.style =  doc.css("a b").text
    beer.abv = doc.css("dd[class=beerstats]")[1].text
    beer.company = doc.css("dd[class=beerstats]")[6].text
    beer.location = doc.css("dd[class=beerstats]")[7].text

  end
end
