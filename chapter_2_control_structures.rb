# This chapter covers why sometime in our ruby code we say, "if this, then do that"
# and at other times say, "do this, unless that"

def title=(new_title)
  if @writable
    @title = new_title
  end
end

# A more verbose way to write this would be...

def title=(new_title)
  unless @read_only
    @title = new_title
  end
end

# even better, we can do this in one easy to understand line

@title = @new_title unless @read_only

# using "unless" generally takes less mental energy than "if not"


# -----------------------

# similarly to if and until, WHILE also has a negative doppleganger, UNTIL. See below.

while ! document.is_printed?
  document.print_next_page
end

# vs 

until document.printed?
  document.print_next_page
end

# one line

document.print_next_page until document.printed?

# It is very obvious that the UNTIL statement above is easier to read than WHILE NOT

# --------------------

# FOR vs EACH

fonts = ['courier', 'times roman', 'helvetica']

for font in fonts
  puts font
end

# vs

fonts = ['courier', 'times roman', 'helvetica']

fonts.each do |font|
  puts font
end

# It turns out, and I had no idea about this, that for simply makes a call to .each anyway, so
# go ahead and just use .each in the first place

# --------------------

# Case statements

case title
when 'War And Peace'
  puts 'Tolstoy'
when 'Romeo And Juliet'
  puts 'Shakespeare'
else
  puts "Don't know"
end

# can also assign to a variable like so...

author = case title
  when 'War And Peace' then 'Tolstoy'
  when 'Romeo And Juliet' then 'Shakespeare'
end

# case uses the === operator

# Can also use case and regular expressions

case title
when /War And .*/
  puts 'Maybe Tolstoy?'
when /Romeo And .*/
  puts 'Maybe Shakespeare?'
else
  puts 'Absolutely no idea...'
end

# Use only false or nil in ruby - 0 is treated as true

# ternery operators are my jam, I love them

title.blank? ? "add a title" : "title present"



# ----------------

# other goodies

@first_name = '' unless @first_name

# vs

@first_name = @first_name || ''


























