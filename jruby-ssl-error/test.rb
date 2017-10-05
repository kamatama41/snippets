require 'net/http'
require 'optparse'

opts = ARGV.getopts('', 'set-cert')

url = 'https://www.google.co.jp'
puts "Start to access #{url}"
puts opts
uri = URI.parse(url)
http = Net::HTTP.new(uri.hostname, uri.port)
http.use_ssl = true
if opts['set-cert']
  http.ca_file = '/Equifax_Secure_Certificate_Authority.pem'
end

get = Net::HTTP::Get.new(uri)
res = http.request(get)
puts "#{res.code}: #{res.message}"
puts 'Done'
