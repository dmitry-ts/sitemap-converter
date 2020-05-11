file = File.open("list.txt", "rb")
contents = file.read

parsed = contents.gsub("URL:\s", "")

file.close
puts parsed
