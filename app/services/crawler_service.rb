# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

class CrawlerService
  attr_accessor :quotes, :search

  def initialize(search)
    @search = search
    @quotes = []
  end

  def scrape_page(url)
    Nokogiri::HTML(URI.open(url))
  end

  def perform
    doc = scrape_page("http://quotes.toscrape.com/tag/#{@search}/")

    quotes = doc.css('div.quote')

    quotes.each do |quote|
      title  = quote.css('span.text').text
      author = quote.css('span small.author').text
      about  = "http://quotes.toscrape.com#{quote.css('span a').attribute('href').value}"
      tags   = quote.css('div.tags meta.keywords').attribute('content').value.split(',')
      @quotes << { quote: title, author:, author_about: about, tags: }
    end

    @quotes
  rescue StandardError => e
    puts e
  end
end
