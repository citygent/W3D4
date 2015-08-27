mta = {
  'n': ['times square', '34th', '28th', '23rd', 'union square', '8th'],
  'l': ['8th', '6th', 'union square', '3rd', '1st'],
  '6': ['grand central', '33rd', '28th', '23rd', 'union square', 'astor place']
}
puts "Welcome to MTA! \n Which line are you getting on at?"
line_on = gets.downcase.chomp.to_sym
puts line_on

puts "Which Station are you getting on at?"
station_on = gets.chomp.downcase
puts station_on

puts "Which line is your destination station on?"
line_off = gets.chomp.downcase.to_s.to_sym

puts "Which station are you going to?"
station_off = gets.chomp.downcase

if line_on == line_off
  stops = (mta[line_on].index(station_on) - mta[line_off].index(station_off)).abs
  puts 'your journey will take '+stops+'stops'
elsif line_on != line_off
  leg1 = (mta[line_on].index(station_on) - mta[line_on].index('union square')).abs
  leg2 = (mta[line_off].index('union square') - mta[line_off].index(station_off)).abs
  stops = leg1 + leg2
  puts stops.class
  puts leg1.class
  puts leg2.class
  puts {mta[station_on]}
  puts mta[station_off].class # I do not understand this at all.
  puts "Your journey will take "+(leg1.to_s)+" stops to Union Square, where you'll need to change to the "+line_off.to_s+" line, and continue for a further "+(leg2.to_s)+" stops."
end
