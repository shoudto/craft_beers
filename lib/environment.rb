require_relative "./craft_beers/version"

module CraftBeers
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "./cli"
require_relative "./scraper"
require_relative "./beer"