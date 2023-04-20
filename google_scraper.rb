require 'nokogiri'

def scrape_google_trends
  url = 'https://trends.google.com/trends/trendingsearches/daily/rss?geo=CA'
  xml_doc = Nokogiri::XML(response.body)

  trends = xml_doc.xpath('//item/title').first(10).map(&:text)

  trends
end

loop do
  puts "Top 10 trending terms in Google Canada: #{scrape_google_trends}"
  sleep 3600 # sleep for 1 hour
end
