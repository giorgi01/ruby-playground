p %q/general single-quoted string #{2*2}/ # Returns raw string, because '' not supports string formatting
p %Q!general double-quoted string #{2*2}! # Returns formatted string
p %Q{Seconds/day: #{24*60*60}} # is same as first example | "string"

#Also we can do double-quoted strings without 'Q' 
p %!Twice two is #{2*2}!

print <<-STRING1, <<-STRING2, <<-STRING3
First
STRING1
Second
STRING2
Third \nFourth
STRING3

p 'string'.encoding
p RUBY_VERSION