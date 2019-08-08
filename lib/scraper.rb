class Scraper

  def self.scrape_beer_list

    html = open("https://www.beeradvocate.com/beer/top-rated/")
    doc = Nokogiri::HTML(html)

      beer_list = doc.css("tr")

      beer_list.each do |beer|
        brew = Beer.new
        binding.pry  
        brew.name = beer
      end
  end

  def self.scraper_beer_info(beer)

  end
end
