file_data = File.read(ARGV.join('')).split

main_data = []
tagless_data = []

# Cherry pick only urls and frequency
file_data.each do |item|
  if item.match(/<loc>|changefreq/)
    main_data << item
  end
end

# Remove tags
main_data.each do |item|
  if item.match(/<loc>/)
    tagless_data << item.gsub(/<\/?loc>/, '')
  end
  if item.match(/<changefreq>/)
    tagless_data << "Change Frequency: " + item.gsub(/<\/?changefreq>/, '') + "\n\</url>"
  end
end

puts tagless_data
