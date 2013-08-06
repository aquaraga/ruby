require 'optparse'
option_parser = OptionParser.new

do_we_need_help = false;

option_parser.on('--help', '--h', '-H') { print("Got help option\n"); do_we_need_help = true}
option_parser.on('--name aString') { |str| print("Your name is #{str}\n") }

option_parser.parse(ARGV) rescue print('Invalid arguments')

if (do_we_need_help)
  print("We have a help option!\n")
end

print("Found #{ARGV.size} arguments\n")
print("The arguments are #{ARGV.inspect}\n")


print("Bye Bye.. \n")