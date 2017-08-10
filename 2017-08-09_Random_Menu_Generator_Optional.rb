#Random Menu Generator
# https://github.com/Ada-C8/Random-Menu

max_items = 10
items = max_items + 1

until items <= max_items
puts "How many menu items would you like to see today? We have only up to #{max_items} foods to offer."
items = gets.chomp.to_i
end

puts "Here are our #{items} items on today's menu:"
puts " "

adjectives = ["slimy", "spicy", "gelatinous", "umami", "sweet", "salty", "bitter", "sugary", "lightly", "hard" ]
cooking_style = ["fried", "baked", "sauteed", "broiled", "stewed", "grilled", "julienned", "chopped", "pureed", "fire-roasted"]
foods = ["eggs", "chicken", "octopus", "cod", "eggplant", "salmon", "parsnips", "brussel sprouts", "field roast", "tofu"]

menu_item = 0

items.times do |x|

  menu_item = menu_item + 1
  puts "Menu Item No. #{menu_item}:"

  adj = adjectives.sample
  puts adj + " " + cooking_style.sample + " " + foods.sample

  adjectives.delete(adj)

end
