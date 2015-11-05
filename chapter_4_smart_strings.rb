a_string_with_a_quote = 'Say it ain\'t so!'
=> "Say it ain't so!"

a_string_with_a_backslash = 'This is a backslash: \\'
=> "This is a backslash: \\"

#Double-quoted strings do quite a bit more interpretation: You can put characters
#like tabs and newlines in a double-quoted string with the appropriate character after
#a backslash:

double_quoted = "I have a tab: \t and a newline: \n"


# All hail the arbitrary quote mechanism!

str = %q{"Stop", she said, "I can't live without 's and "s."}

str = %Q<The time is now #{Time.now}>
=> "The time is now 2015-11-05 14:03:17 -0500"

#heredoc 

heres_one = <<EOF
This is the beginning of my here document.
And this is the end.
EOF

# lstrip

'      hello'.lstrip
=> "hello"

#rstrip

'hello        '.rstrip
=> "hello"

# strip

'     hello      '.strip
=> "hello"

"It was a dark and stormy night\n".chomp
=> "It was a dark and stormy night"


# chop and not chomp

"It was a dark and stormy night".chop
=> "It was a dark and stormy nigh"

# sub

'It is warm outside'.sub( 'warm', 'cold' )
=> "It is cold outside"

puts 'yes yes'.sub( 'yes', 'no' )
=> no yes

puts 'yes yes'.gsub( 'yes', 'no' )
=> no no

# split

'It was a dark and stormy night'.split
=> ["It", "was", "a", "dark", "and", "stormy", "night"]

'Bill:Shakespeare:Playwright:Globe'.split( ':' )
=> ["Bill", "Shakespeare", "Playwright", "Globe"]


"It was a dark and stormy night".index( "dark" )
=> 9

first_name = 'Karen'
=> "Karen"

given_name = first_name
=> "Karen"

given_name
=> "Karen"

first_name = 'Jesse'
=> "Jesse"

given_name
=> "Karen"
