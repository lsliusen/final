# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.delete_all
Review.delete_all
Tag.delete_all
Category.delete_all
User.delete_all

[{:title=> "Pancake", :photo_url => "http://graphics8.nytimes.com/images/2014/04/14/dining/everydaypancakes/everydaypancakes-articleLarge.jpg", :instruction=>"The basic pancake is made from a simple batter of eggs, flour, milk and baking powder for leavening. You can use different types of flour if you want to experiment with whole wheat or buckwheat. And you can also add fruit to the mixture. The batter can be made from scratch in about the same time it takes to make toast. The most time-consuming part of making pancakes, of course, is cooking them. But that time is so short you should consider these an everyday convenience food, not a special-occasion feast. Cook this recipe a few times and it may become part of your weekly routine. (Sam Sifton)",:date=> Time.now, :ingredients => "1/2 cups all-purpose flour, 1/4 cups milk, 3/2 teaspoons baking powder, 1 egg, 1 teaspoon salt, 3 tablespoons butter, melted, 1 tablespoon white sugar", :duration => "20 mins", :stars => 0, :num_reviews => 0, :user_id => 1},
{:title => "Omelette", :photo_url=> "http://wishfulchef.cdn.kinsta.com/wp-content/uploads/2011/09/SalmonPotatoOmelette.jpg", :instruction=>"First, prepare the filling. A basic rule of thumb is that you need one quarter to one third cup of filling for every two eggs. If you are using a filling that needs to be cooked — such as apples, mushrooms, onions, peppers, leeks — quickly sauté in a small frying pan with 1 teaspoon of the butter. If you are making a cheese omelette, either slice the cheese thinly or grate it finely and put aside.

Crack the eggs into a small mixing bowl. Stir gently with a fork until well-beaten. Add the milk or water, salt and pepper, and any herbs, and set aside.

Heat a 6- to 8-inch omelette pan over high heat until very hot (approximately 30 seconds). Add the butter, making sure it coats the bottom of the pan. As soon as the butter stops bubbling and sizzling (and before it starts to brown), slowly pour in the egg mixture.

Tilt the pan to spread the egg mixture evenly. Let eggs firm up a little, and after about ten seconds shake the pan a bit and use a spatula to gently direct the mixture away from the sides and into the middle. Allow the remaining liquid to then flow into the space left at the sides of the pan.

Continue to cook for another minute or so until the egg mixture holds together. While the middle is still a little runny, add the filling. Put in sautéed vegetables or fruit first, near the center, then sprinkle any cheese on top.

Tilt the pan to one side and use the spatula to fold approximately one third of the omelette over the middle. Shake the pan gently to slide the omelette to the edge of the pan.

Holding the pan above the serving plate, tip it so the omelette rolls off, folding itself onto the plate. The two edges will be tucked underneath.", :date=>Time.now, :ingredients => "Ingredients for Omelette", :duration => "20 mins", :stars => 0, :num_reviews => 0, :user_id => 1},
{:title=>"THAI CHICKEN CURRY", :photo_url => "http://www.epicurious.com/images/recipesmenus/2013/2013_january/51140410.jpg", :instruction =>"Heat oil in a large heavy pot over medium heat. Add curry paste and cook, stirring, until fragrant, about 1 minute. Add carrots, onion, and pepper and cook, stirring occasionally, until onion is translucent, about 10 minutes.

Add potatoes, chicken, coconut milk, and 1 1/2 cups water and bring to a boil. Reduce heat to a simmer and cook, stirring occasionally, until chicken is cooked through and potatoes are tender, about 20 minutes. Divide curry among bowls and top with herbs.", :date=> Time.now, :ingredients => "Ingredients for Thai chicken curry", :duration => "20 mins", :stars => 0, :num_reviews => 0, :user_id => 1}
].each do |recipe|
	rcp = Recipe.new
	rcp.title = recipe[:title];
	rcp.photo_url = recipe[:photo_url]
	rcp.instruction = recipe[:instruction]
	rcp.date = recipe[:date]
    rcp.ingredients = recipe[:ingredients]
    rcp.duration = recipe[:duration]
    rcp.stars = recipe[:stars]
    rcp.num_reviews = recipe[:num_reviews]
    rcp.user_id = recipe[:user_id]
	rcp.save
end
[{:title=> "This is cool", :comment=>"The Food is really delicious.",:rating=> 4, :date=>Time.now, :recipe_id=>1, :user_id=>1},
{:title=> "This is bad!", :comment=> "This isn't a good recipe.", :rating=> 1, :date=> Time.now, :recipe_id=>1, :user_id=>1},
{:title=> "I love it!", :comment=> "OMG, that is purely delicious", :rating=> 5, :date=> Time.now, :recipe_id=>1, :user_id=>1}
].each do |review|
	rv = Review.new
	rv.title = review[:title]
	rv.comment = review[:comment]
	rv.rating = review[:rating]
	rv.date = review[:date]
	rv.recipe_id = review[:recipe_id]
    rv.user_id = review[:user_id]
	rv.save
end

[{:name => "breakfast"},
{:name =>"egg"},
{:name=> "sweet"}
].each do |tag|
	tg = Tag.new
	tg.name = tag[:name]
	tg.save
end
[{:recipe_id=> 1, :tag_id=> 1},
{:recipe_id=> 1, :tag_id=>2},
].each do |category|
	cat = Category.new
	cat.recipe_id = category[:recipe_id]
	cat.tag_id = category[:tag_id]
	cat.save
end

[{:user_name=>"First User", :email=>"fistuser@example.com", :gender=>"male", :create_date=>Time.now, :photo_url=>"http://d.lanrentuku.com/down/png/0904/yellow_people_face/yellow_people_face_02.png", :background=>"Love cooking!", :password=>"pwd4firstuser"}].each do |usr|
    user = User.new
    user.user_name = usr[:user_name]
    user.email = usr[:email]
    user.gender = usr[:gender]
    user.photo_url = usr[:photo_url]
    user.background = usr[:background]
    user.password = usr[:password]
    user.create_date = usr[:create_date]
    user.save
end

