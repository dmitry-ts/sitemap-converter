arg = ARGV.join('')
file = File.open(arg, "rb")
contents = file.read

parsed = contents.gsub(/(URL|Change Frequency):\s/, '')

file.close
puts parsed
