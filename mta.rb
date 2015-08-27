mta = {
  'n': ['times square', '34th', '28th', '23rd', 'union square', '8th'],
  'l': ['8th', '6th', 'Union Square', '3rd', '1st'],
  '6': ['grand central', '33rd', '28th', '23rd', 'union square', 'astor place']
}

puts "Welcome to MTA! \n Which line are you getting on at?"
line_on = gets.chomp.downcase
puts line_on

puts "Which Station are you getting on at?"
station_on = gets.chomp.downcase
puts station_on

puts "Which line is your destination station on?"
line_off = gets.chomp.downcase 

puts "Which station are you going to?"
station_off = gets.chomp.downcase

