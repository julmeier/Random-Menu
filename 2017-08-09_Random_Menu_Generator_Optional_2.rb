#Random Menu Generator
# https://github.com/Ada-C8/Random-Menu

# Gets the sizes of each of the arrays from the user
puts "how many types of adjectives do you want on the menu?"
user_adj = gets.chomp.to_i

puts "how many types of cooking styles do you want on the menu?"
user_styles = gets.chomp.to_i

puts "how many types of foods do you want on the menu?"
user_foods = gets.chomp.to_i

# initializes the arrays
adjectives = []
cooking_style = []
foods = []

# collects array data from user
user_adj.times do |x|
  puts "please enter adjective #{x+1}:"
  enter_adj = gets.chomp
  adjectives << enter_adj
end

user_styles.times do |x|
  puts "please enter cooking style #{x+1}:"
  enter_adj = gets.chomp
  cooking_style << enter_adj
end

user_foods.times do |x|
  puts "please enter food type #{x+1}:"
  enter_adj = gets.chomp
  foods << enter_adj
end


# Gets the number of menu items from the user. Rejects if the number of menu items exceeds the number of adjectives entered in the adjectives array.
items = user_adj + 1

until items <= user_adj
  puts "How many menu items would you like to see today? We have only up to #{user_adj} menu items to offer with unique adjectives."
  items = gets.chomp.to_i
end

# Displays menu
puts "Here are our #{items} items on today's menu:"
puts " "

items.times do |x|
  puts "Menu Item No. #{x+1}"
  adj = adjectives.sample
  puts adj + " " + cooking_style.sample + " " + foods.sample
  adjectives.delete(adj)
end
