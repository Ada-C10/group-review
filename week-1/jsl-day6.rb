friends_not_integer = friends_num.to_i.to_s != friends_num

friends_not_positive = friends_num.to_i <= 0


while (friends_not_integer) || (friends_not_positive)
  puts "you did not input a number bigger than 0, please try again"
  friends_num = gets.chomp.strip
end
