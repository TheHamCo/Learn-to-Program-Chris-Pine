filename = 'ListerQuote.txt'
test_string = "I promise that I swear absolutely that I will never mention gazpacho soup ever again"

File.open(filename,'w'){ |f| f.write(test_string) }

read_string = File.read(filename)

puts(read_string==test_string)