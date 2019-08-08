class Scraper

  def self.scrape_beer_list

    html = open("https://www.beeradvocate.com/beer/top-rated/")
    doc = Nokogiri::HTML(html)

      beer_list = doc.css("tr")

      beer_list.drop(2).each do |beer|
        brew = Beer.new
        brew.name = beer.css("b").text
        # brew.url = beer.css("a").attr('href').value
      end
  end

  def self.scraper_beer_info(beer)

  end
end
