#!/usr/bin/env ruby

# wiki-scraper.rb
#
# Tests the idea that the first link on each wikipedia article
#   will eventually lead to philosophy
#
# Usage:
#   ruby wiki-scraper.rb daft punk

require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'open-uri'
require 'cgi'

ROOT_URL = 'http://en.wikipedia.org'

def search_url(query)
  "#{ROOT_URL}/w/index.php?search=#{CGI.escape(query)}"
end

def get_page query
  @a.get query
end

def first_link page, current_url
  # This was an attempt to get the actual first link but it does not ignore links in the parentheses (which causes loops)
  # href = page.search("//div[@class='mw-content-ltr']").xpath('/html/body/div[3]/div[3]/div[4]/p/a').first.attributes['href'].value

  # links that begin with /wiki/ and are not a wikipedia info page ex. /wiki/Wikipedia:info
  links = page.links_with(:href => %r{^\/wiki\/.*}).select{|l| (l.href =~ /\/wiki\/.*:.*/) == nil}

  #is there a link to philosophy on the page
  does_philosophy_exist = links.select{|l| l.href =~ /\/wiki\/Philosophy$/}
  #if so grab it
  if(does_philosophy_exist.count > 0)
    href = does_philosophy_exist.first.href
  else
    href = current_url
    while href == current_url
      href = links.sample.href
    end
  end
  "#{ROOT_URL}#{href}"
end


@a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

philosophy_title = "Philosophy - Wikipedia"

start = ARGV.join(' ')
url = search_url start
page = get_page url
title = page.title
puts "1: #{title}"
count = 2

while title != philosophy_title
  url = first_link page, url
  if !url.nil?
    page = get_page url
    title = page.title
    puts "#{count}: #{title}: #{url}"
    count += 1
  else
    puts "#{start} does not eventually lead to Philosophy"
    break
  end

  if count > 1000
    puts "#{start} does not lead to Philosophy after #{count} attempts"
    break
  end
end
