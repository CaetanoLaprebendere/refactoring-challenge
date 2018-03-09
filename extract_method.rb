#extract_method.rb
#use this as tips for the first one : http://refactoring.com/catalog/extractMethod.html

def name_prize_aeiou  
  if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
     puts "Congratulations #{username}! You won 10 dollars!"
  else
     puts "Thanks for joining!"
end 

def name_prize_bglp  
  if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("b", "g", "l", "p") )
     puts "Congratulations #{username}! You won 50 dollars!"
  else
     puts "Thanks for joining!"     
end 

def name_prize_quxyz  
  if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("q", "u", "x", "y", "z") )
     puts "Congratulations #{username}! You won 100 dollars!"
  else
     puts "Thanks for joining!"  
end 

Alice.name_prize_aeiou
Bobby.name_prize_bglp
Xena.name_prize_quxyz

# - - - - - - - - - - - - - - - - - - - #

# username = "Alice"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
# 	puts "Congratulations #{username}! You won 10 dollars!"
# else
# 	puts "Thanks for joining!"
# end

# username = "Bobby"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("b", "g", "l", "p") )
# 	puts "Congratulations #{username}! You won 50 dollars!"
# else
# 	puts "Thanks for joining!"
# end

# username = "Xena"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("q", "u", "x", "y", "z") )
# 	puts "Congratulations #{username}! You won 100 dollars!"
# else
# 	puts "Thanks for joining!"
# end
