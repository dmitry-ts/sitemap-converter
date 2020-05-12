file_data = File.read(ARGV.join('')).split

urls = []

file_data.each do |i|
  if i.match(/https:/)
    urls << i
  end
end

repeated = []
nonrepeated = []

urls.each do |item|
  if nonrepeated.include?(item)
    repeated << item
  else
    nonrepeated << item
  end
end

# puts urls
puts "#{repeated}"
