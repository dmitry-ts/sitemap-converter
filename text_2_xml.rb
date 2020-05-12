require_relative 'repeat'

file_data = File.read(ARGV.join('')).split

# Start under development. Remove repeated urls
urls = []
file_data.each do |i|
  if i.match(/https:/)
    urls << i
  end
end

r = CheckRepeated.new(urls)
# puts r.get_repeated
# under development

main_data = []

file_data.each do |item|
  if item.match(/https:/)
    main_data << "\s\s<url>\n\s\s\s\s<loc>" + item + "</loc>\n"
  end
  if ['weekly', 'daily'].include? item
    main_data << "\s\s\s\s<changefreq>" + item + "</changefreq>\n\s\s</url>"
  end
end

puts main_data
# puts "#{main_data}"
