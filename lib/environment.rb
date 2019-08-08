require_relative "./craft_beers/version"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module CraftBeers
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "./cli"
require_relative "./scraper"
require_relative "./beer"
