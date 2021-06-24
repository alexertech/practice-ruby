require 'net/http'
require 'json'

limit    = 2
url      = 'https://jsonmock.hackerrank.com/api/articles?author=patricktomas'
uri      = URI(url)
response = Net::HTTP.get(uri)
resp     = JSON.parse(response)
articles = []
i        = 0
resp['data'].each { |d|
	if i == limit 
		break
	end
	articles[ d['num_comments'].to_i ] = d['title']
	i+=1
}

articles.sort

puts articles


