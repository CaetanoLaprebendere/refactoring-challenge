# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html
def name_big_prize_aeiou
  
username = gets.chomp!  
username_longer_than_three = username.length > 3
username_less_than_eight = username.length <= 7
username_start_with_a_vowel = username.downcase.start_with?("a", "e", "i", "o", "u")

  if ( username_longer_than_three && username_less_than_eight ) || (username_start_with_a_vowel)
    puts "Congratulations #{username}! You won 1 million dollars!"
  else
    puts "Please try again!"
  end  
end

name_big_prize_aeiou

# - - - - - - - - - - #

# username = "Alice"

# if ( username.length > 3 && username.length <= 7 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
# 	puts "Congratulations #{username}! You won 1 million dollars!"
# else
# 	puts "Please try again!"
# end

