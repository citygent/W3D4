mta = {
  'n': ['times square', '34th', '28th', '23rd', 'union square', '8th'],
  'l': ['8th', '6th', 'Union Square', '3rd', '1st'],
  '6': ['grand central', '33rd', '28th', '23rd', 'union square', 'astor place']
}

puts "Welcome to MTA! \n Which line are you getting on at?"
line_on = gets.downcase.chomp.to_sym
puts line_on

puts "Which Station are you getting on at?"
station_on = gets.chomp.downcase
puts station_on

puts "Which line is your destination station on?"
line_off = gets.chomp.downcase.to_sym

puts "Which station are you going to?"
station_off = gets.chomp.downcase

# index_on = mta[line_on].index(station_on)
# index_off = mta[line_off].index(station_off)

# if line_on == line_off
#   stops = (index_on - index_off).abs
# end

if line_on == line_off
  stops = (mta[line_on].index(station_on) - mta[line_off].index(station_off)).abs
end

puts stops
