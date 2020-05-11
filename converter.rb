# Open file
file = File.open("sitemap.xml")

# Read file
file_data = file.readlines.map(&:chomp)

puts file_data

file.close
