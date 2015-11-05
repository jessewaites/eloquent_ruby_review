# Array literals

poem_words = [ 'twinkle', 'little', 'star', 'how', 'I', 'wonder' ]

# vs 

poem_words = %w{ twinkle little star how I wonder }

# second one clearly easier to write for a human



# hash literals

book_info = { :first_name => 'Russ', :last_name => 'Olsen' }

# is exactly equal to 

book_info = { first_name: 'Russ', last_name: 'Olsen' }

# arguments

# If, in your method definition, you stick an asterisk before one of your parameter names, that parameter will
# soak up any extra arguments passed to the method. 
# The value of the starred parameter will be an array containing all the extra arguments. 

def echo_all( *args )
  args.each { |arg| puts arg }
end

# note that you can only have one starred parameter, called the splat operator

def echo_at_least_two( first_arg, *middle_args, last_arg )
  puts "The first argument is #{first_arg}"
  middle_args.each { |arg|puts "A middle argument is #{arg}" }
  puts "The last argument is #{last_arg}"
end

# beware the .bang!

# hashes are ordered