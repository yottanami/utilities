#/usr/bin/env ruby
# This simple script grep list of files in a specific 
# path from a text file
puts "Enter file path that contains list files"
file = gets.chomp
puts "Enter the url that should be check"
url = gets.chop + "/*"

files = Dir[url]

File.open(file).each do  |line|
  line.gsub!(/\n/, '')
  if  files.grep(/#{line}/).length < 1
      puts "#{line}"
  end
end
