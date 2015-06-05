Recipe.delete_all
Review.delete_all
Tag.delete_all
Category.delete_all
User.delete_all

[{:user_name=>"Default User I", :email=>"fistuser@example.com", :gender=>"Male", :create_date=>Time.now, :photo_url=>"http://d.lanrentuku.com/down/png/0904/yellow_people_face/yellow_people_face_02.png", :background=>"My first dinner party, at the age of 20, was made up of recipes I found in the newly released Mastering the Art of French Cooking, by Julia Child, Simone Beck & Louisette Bertholle. After pulling off that feat (sucessfully, whew!), I continued cooking for family, friends and coworkers for another 40 years before entering ACF's Culinary Program sponsored by the American Culinary Federation. After graduating I was appointed to the Board of Directors and spent two years as Apprenticeship Chair for the Capitol City Chef's Association, a chapter of the American Culinary Federation. I continue to be a proud member of the ACF.", :password=>"pwd4firstuser"},
{:user_name=>"Default User II", :email=>"seconduser@example.com", :gender=>"Female", :create_date=>Time.now, :photo_url=>"http://cliparts.co/cliparts/Acb/jre/AcbjreKc4.jpg", :background=>"Along the way I was a part of a Chef Scholarship Fundraiser Dinner group and cooked with wonderful chefs and cooks from around the country and England. That program sponsored by Chefs4Students is still carrying on these fundraiser dinners and raising monies for scholarships. It was during the time of working with this group that our book, Share a Recipe Cookbook, came into being. The book has already given a $1,000.00 scholarship to a culinary student attending Le Cordon Bleu Culinary school in Las Vega, Nevada. ", :password=>"pwd4firstuser"},
].each do |usr|
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

[{:title=> "Pancake", :photo_url => "http://graphics8.nytimes.com/images/2014/04/14/dining/everydaypancakes/everydaypancakes-articleLarge.jpg", :instruction=>"The basic pancake is made from a simple batter of eggs, flour, milk and baking powder for leavening. You can use different types of flour if you want to experiment with whole wheat or buckwheat. And you can also add fruit to the mixture. The batter can be made from scratch in about the same time it takes to make toast. The most time-consuming part of making pancakes, of course, is cooking them. But that time is so short you should consider these an everyday convenience food, not a special-occasion feast. Cook this recipe a few times and it may become part of your weekly routine. (Sam Sifton)",:date=> Time.now, :ingredients => "1/2 cups all-purpose flour, 1/4 cups milk, 3/2 teaspoons baking powder, 1 egg, 1 teaspoon salt, 3 tablespoons butter, melted, 1 tablespoon white sugar", :duration => "20 mins", :stars => 3, :num_reviews => 3, :user_id => User.all.first.id},
{
  :title => "Omelette", :photo_url=> "http://wishfulchef.cdn.kinsta.com/wp-content/uploads/2011/09/SalmonPotatoOmelette.jpg", :instruction=>"First, prepare the filling. A basic rule of thumb is that you need one quarter to one third cup of filling for every two eggs. If you are using a filling that needs to be cooked — such as apples, mushrooms, onions, peppers, leeks — quickly sauté in a small frying pan with 1 teaspoon of the butter. If you are making a cheese omelette, either slice the cheese thinly or grate it finely and put aside.

Crack the eggs into a small mixing bowl. Stir gently with a fork until well-beaten. Add the milk or water, salt and pepper, and any herbs, and set aside.

Heat a 6- to 8-inch omelette pan over high heat until very hot (approximately 30 seconds). Add the butter, making sure it coats the bottom of the pan. As soon as the butter stops bubbling and sizzling (and before it starts to brown), slowly pour in the egg mixture.

Tilt the pan to spread the egg mixture evenly. Let eggs firm up a little, and after about ten seconds shake the pan a bit and use a spatula to gently direct the mixture away from the sides and into the middle. Allow the remaining liquid to then flow into the space left at the sides of the pan.

Continue to cook for another minute or so until the egg mixture holds together. While the middle is still a little runny, add the filling. Put in sautéed vegetables or fruit first, near the center, then sprinkle any cheese on top.

Tilt the pan to one side and use the spatula to fold approximately one third of the omelette over the middle. Shake the pan gently to slide the omelette to the edge of the pan.

Holding the pan above the serving plate, tip it so the omelette rolls off, folding itself onto the plate. The two edges will be tucked underneath.", :date=>Time.now, :ingredients => "Ingredients for Omelette", :duration => "20 mins", :stars => 0, :num_reviews => 0, :user_id => User.all.first.id},
{:title=>"THAI CHICKEN CURRY", :photo_url => "http://www.epicurious.com/images/recipesmenus/2013/2013_january/51140410.jpg", :instruction =>"Heat oil in a large heavy pot over medium heat. Add curry paste and cook, stirring, until fragrant, about 1 minute. Add carrots, onion, and pepper and cook, stirring occasionally, until onion is translucent, about 10 minutes.

Add potatoes, chicken, coconut milk, and 1 1/2 cups water and bring to a boil. Reduce heat to a simmer and cook, stirring occasionally, until chicken is cooked through and potatoes are tender, about 20 minutes. Divide curry among bowls and top with herbs.", :date=> Time.now, :ingredients => "Ingredients for Thai chicken curry", :duration => "20 mins", :stars => 0, :num_reviews => 0, :user_id => User.all.first.id},
{:title=>"PISTACHIO MACARONS", :photo_url => "http://s3.sinclairandmoore.com/wp-content/uploads/2014/04/Sinclair-Moore-macaron-43-750x498.jpg", 
:instruction => "I started by reading just about every macaron cookbook, blog post and recipe that I could find. It seemed like one recipe just contradicted the next one. Some recipes call for large amounts of sugar, and others barely any sugar at all. Some recipes said to let them rest overnight before baking and other recipes said to let them rest for 10 minutes. Most recipes seemed to be very vague with the instructions as if everyone was supposed to already know what they were doing. It can all be so confusing. Through trial and error, I have combined a lot of techniques, suggestions and tricks and consolidated them below to make the recipe for what I think is the perfect macaron: delicately crusty on the outside but soft and chewy on the inside and perfectly filled with a flavored buttercream.", 
:date => Time.now, 
:ingredients => "2 cups + 1 Tbsp of ground almond flour 
  6 egg whiltes+ half an egg whit,
  3/4 cup finely ground pistachio nuts,
  1cup baker fine granulated sugar,
  2 cups powdered suger,
  a few drops green food coloring", 
:duration=>"2 Days", 
:stars => 5, 
:num_reviews => 1, 
:user_id => User.all.second.id},
{:title => "KUNG PAO CHICKEN",
:photo_url => "http://www.epicurious.com/images/recipesmenus/2013/2013_july/51179600.jpg",
:instruction =>"1. Marinate the chicken: In a medium bowl, stir together the soy sauce, rice wine, and cornstarch until the cornstarch is dissolved. Add the chicken and stir gently to coat. Let stand at room temperature for 10 minutes.

2. Prepare the sauce: In another bowl, combine the black vinegar, soy sauce, hoisin sauce, sesame oil, sugar, cornstarch, and Sichuan pepper. Stir until the sugar and cornstarch are dissolved and set aside.

3. You may need to turn on your stove's exhaust fan, because stir-frying dried chilies on high heat can get a little smoky. Heat a wok or large skillet over high heat until a bead of water sizzles and evaporates on contact. Add the peanut oil and swirl to coat the base. Add the chilies and stir-fry for about 30 seconds, or until the chilies have just begun to blacken and the oil is slightly fragrant. Add the chicken and stir-fry until no longer pink, 2 to 3 minutes.

4. Add the scallion whites, garlic, and ginger and stir-fry for about 30 seconds. Pour in the sauce and mix to coat the other ingredients. Stir in the peanuts and cook for another 1 to 2 minutes. Transfer to a serving plate, sprinkle the scallion greens on top, and serve.",
:date => Time.now,
:ingredients => "Marinade: 1 tablespoon soy sauce, 
2 teaspoons Chinese rice wine or dry sherry, 
1 1/2 teaspoons cornstarch, 
1 pound boneless, skinless, chicken breasts or thighs, cut into 1-inch cubes",
:duration =>"20 min",
:stars => 0,
:num_reviews=>0,
:user_id => User.all.first.id},
{:title =>"CROCK POT RIBS",
:photo_url =>"http://www.epicurious.com/images/recipesmenus/2015/2015_may/56389486.jpg",
:instruction => "1. Place ribs in a crock pot and sprinkle both sides with salt.

2. Pour BBQ sauce over the ribs and coat the ribs WELL with the sauce.

3. Cover the slow cooker (aka crock pot) and cook on low heat for 8–10 hours.

4. Baste with BBQ sauce if desired and serve.",
:date => Time.now,
:ingredients => "1 3–4 pound country style pork ribs, also known as baby back ribs (about 2 racks),
1 teaspoon salt,
1 cup bbq sauce plus additional for serving
",
:duration => "30 min",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.second.id
},
{:title =>"BUTTERMILK PANCAKES WITH ROASTED STRAWBERRIES",
:photo_url =>"http://www.epicurious.com/images/recipesmenus/2015/2015_may/56389558.jpg",
 :instruction => "Roast the strawberries:
Preheat oven to 425°F. Place strawberries, sugar, and salt in a glass baking dish. Scrape in vanilla seeds, add pod, and stir to combine. Roast, stirring occasionally, until juices are bubbling, 15–18 minutes. Let cool slightly and discard pod.

Make the pancakes:
Whisk flour, sugar, salt, baking powder, and baking soda in a large bowl. Beat eggs, buttermilk, vanilla, and 3 Tbsp. melted butter in a medium bowl with a fork to incorporate eggs. Add egg mixture to dry ingredients and whisk to combine. Batter will be slightly lumpy.

Heat a large griddle or 2 cast-iron or nonstick skillets over medium; brush with butter. Drop batter by 1/4 cupfuls onto griddle. Cook until bubbles form on the surface and pop, and the underside is golden brown, 2 1/2–3 minutes. Flip and cook until lightly browned on the bottom, 2 1/2–3 minutes more. Transfer pancakes to plates or a platter and brush tops with butter. Repeat with remaining batter, brushing griddle with butter as needed.

Serve pancakes topped with roasted strawberries and sprinkled with almonds, if desired.",
:date => Time.now,
:ingredients => "1 pound strawberries (about 4 cups), hulled, halved, quartered if large,
1/4 cup sugar,
Pinch of kosher salt,
1 vanilla bean, split lengthwise,
1 1/2 cups all-purpose flour,
3 tablespoons sugar,
1 teaspoon kosher salt,
1 teaspoon baking powder,
1/2 teaspoon baking soda,
2 large eggs,
1 3/4 cups buttermilk,
3/4 teaspoon vanilla extract,
3 tablespoons melted unsalted butter, plus more for pan and serving,
1/4 cup toasted sliced almonds (optional)
",
:duration => "1 hour",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.second.id
},
{:title =>"CHOPPED SALAD",
:photo_url =>"http://www.epicurious.com/images/recipesmenus/2010/2010_april/358651.jpg",
:instruction => "1. In a small bowl, combine the onions, water, vinegar, salt, and pepper. Let sit at room temperature for 5 minutes to allow the flavors to develop.

Add 1/2 cup of the oil to the vinegar mixture. Add additional to taste.

2. In a large bowl, combine the lettuce, roasted peppers, olives, haricots verts, cucumber, and herbs. Toss with enough dressing to coat, and season to taste with additional salt and pepper. Serve any remaining dressing on the side.",
:date => Time.now,
:ingredients => "1/2 cup finely chopped red onions,
1/4 cup water,
1/2 cup red wine vinegar,
2 teaspoons kosher salt, plus additional as needed,
2 teaspoons coarsely ground fresh black pepper, plus additional as needed,
1/2 to 1 cup extra virgin olive oil,
1 large head iceburg lettuce, cut into 1/2-inch pieces, 6 to 8 cups,
1 cup Roasted Marinated Peppers , cut into 1/2-inch pieces,
1/2 cup pitted green olives, such as Cerignola, halved,
1/2 cup pitted black olives, such as Cerignola, halved,
1 cup haricots verts, cut into 1-inch pieces,
1 cup English cucumber, peeled and cut into 1/2-inch pieces,
2 tablespoons fresh marjoram leaves,
1/4 cup flat-leaf parsley leaves,
1/4 cup coarsely chopped dill, large stems removed",
:duration => "1 hour 20 min",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.second.id
},
{:title =>"Deep-Dish Apple Pie",
:photo_url =>"http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/8/10/1/Thanksgiving-2011_IG1C18-deep-dish-apple-pie_s4x3.jpg.rend.sni12col.landscape.jpeg",
:instruction => "Preheat the oven to 400 degrees F.

Cut each apple quarter in thirds crosswise and combine in a bowl with the zests, juices, 1/2 cup sugar, flour, salt, cinnamon, nutmeg, and allspice.

Roll out half the pie dough and drape it over a 9- or 10-inch pie pan to extend about 1/2-inch over the rim. Don't stretch the dough; if it's too small, just put it back on the board and re-roll it.

Fill the pie with the apple mixture. Brush the edge of the bottom pie crust with the egg wash so the top crust will adhere. Top with the second crust and trim the edges to about 1-inch over the rim. Tuck the edge of the top crust under the edge of the bottom crust and crimp the 2 together with your fingers or a fork. Brush the entire top crust with the egg wash, sprinkle with 1 teaspoon sugar, and cut 4 or 5 slits.

Place the pie on a sheet pan and bake for 1 to 1 1/4 hours, or until the crust is browned and the juices begin to bubble out. Serve warm.

Read more at: http://www.foodnetwork.com/recipes/ina-garten/deep-dish-apple-pie-recipe.html?oc=linkback",
:date => Time.now,
:ingredients => "12 tablespoons (1 1/2 sticks) very cold unsalted butter

3 cups all-purpose flour

1 teaspoon kosher salt

1 tablespoon sugar

1/3 cup very cold vegetable shortening

6 to 8 tablespoons (about 1/2 cup) ice water

Read more at: http://www.foodnetwork.com/recipes/ina-garten/deep-dish-apple-pie-recipe.html?oc=linkback",
:duration => "2 hours",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.second.id
},
{:title =>"Juicy Grilled Cheeseburgers",
:photo_url =>"http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2012/10/26/0/FNK_Healthy-Juicy-Grilled-Cheeseburgers_s4x3.jpg.rend.sni12col.landscape.jpeg",
:instruction => "Heat a grill to medium-high direct heat and lightly oil the grates using a paper towel soaked in canola oil or nonstick grilling cooking spray.

Spread a 16-inch-long piece of nonstick aluminum foil on a cutting board (or mist a piece of regular aluminum foil with nonstick cooking spray). Top with the onions, 1/4 teaspoon each salt and pepper and 1 tablespoon water. Bring two sides of the foil together, fold over twice to create a seal and then seal the remaining two ends. Put on the grill and cook for 12 minutes, flipping once. The onions should be tender with only a bit of charring. Carefully open the top of the foil to let all the steam out and continue to cook the onions, tossing, until browned and lightly charred, 3 minutes longer. Remove from the heat.

While the onions cook, mix the ketchup and mustard together in a small bowl. Season with pepper and set aside.

Lightly toast the English muffins on the grill and place one top and bottom on each of 4 plates. Spread some of the ketchup sauce on the bottom half of each muffin and top with a slice of tomato.

Divide the beef into 4 patties about 4 inches in diameter and just under 1/2-inch thick. Sprinkle with a total of 1/2 teaspoon salt and 1/4 teaspoon pepper. Place the burgers on the grill. Cook until the edges of the burgers are browning, 3 to 5 minutes, and then flip. Brush the burgers with the remaining ketchup sauce and evenly top with the shredded cheese. Cover the burgers with the grill lid or a large heatproof bowl and continue to cook until the cheese has melted and the burgers are still a bit pink on the inside, about 3 minutes more.

Put one burger on top of the assembled muffin bottom and top with some of the grilled onions and the top of the muffin. Serve with pickles if desired.

Recipe courtesy Food Network Kitchens

Read more at: http://www.foodnetwork.com/recipes/food-network-kitchens/juicy-grilled-cheeseburgers-recipe.html?oc=linkback",
:date => Time.now,
:ingredients => "
Canola oil or nonstick grilling cooking spray, for oiling the grates;
1 medium red onion, thinly sliced;
Kosher salt and freshly ground black pepper;
2 tablespoons ketchup;
2 tablespoons yellow mustard;
4 whole wheat English muffins, split;
1 medium ripe tomato, cored and cut into 4 thick slices;
1 pound 90-percent lean ground beef;
2 ounces 50-percent reduced-fat sharp Cheddar, grated (about 1/2 cup);
Pickles, for serving, optional;
",
:duration => "40 min",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Burger of the Gods",
:photo_url =>"http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/5/6/0/EA1B11_burger-of-the-gods_s4x3.jpg.rend.sni12col.landscape.jpeg",
:instruction => "In separate batches, pulse the chuck and the sirloin in a food processor 10 times. Combine the chuck, sirloin, and kosher salt in a large bowl. Form the meat into 5-ounce patties.

Heat a cast iron skillet or griddle over medium-high heat for 2 to 3 minutes. Place the hamburger patties in the pan. For medium-rare burgers, cook the patties for 4 minutes on each side. For medium burgers, cook the patties for 5 minutes on each side. Flip the burgers only once during cooking.
",
:date => Time.now,
:ingredients => "8 ounces chuck, trimmed, cut into 1 1/2-inch cubes
8 ounces sirloin, trimmed, cut into 1 1/2-inch cubes
1/2 teaspoon kosher salt",
:duration => "30 min",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Peking Duck",
:photo_url =>"http://images.media-allrecipes.com/userphotos/250x250/00/94/65/946502.jpg",
:instruction => "1. Rinse the duck inside and out, and pat dry. Cut off tail and discard. In a small bowl, mix together the cinnamon, ginger, nutmeg, white pepper and cloves. Sprinkle one teaspoon of the mixture into the cavity of the duck. Stir one tablespoon of the soy sauce into the remaining spice mixture and rub evenly over the entire outside of the bird. Cut one of the green onions in half and tuck inside the cavity. Cover and refrigerate the bird for at least 2 hours, or overnight.
Place duck breast side up on a rack in a big enough wok or pot and steam for an hour adding a little more water, if necessary, as it evaporates. Lift duck with two large spoons, and drain juices and green onion.
Preheat the oven to 375 degrees F (190 degrees C). Place duck breast side up in a roasting pan and prick skin all over using a fork.
Roast for 30 minutes in the preheated oven. While the duck is roasting, mix together the remaining 2 tablespoons of soy sauce and honey. After 30 minutes, brush the honey mixture onto the duck and return it to the oven. Turn the heat up to 500 degrees F (260 degrees C). Roast for 5 minutes, or until the skin is richly browned. Do not allow the skin to char.
Prepare the duck sauce by mixing the plum jam with the sugar, vinegar and chutney in a small serving bowl. Chop remaining green onions and place them into a separate bowl. Place whole duck onto a serving platter and garnish with orange slices and fresh parsley. Use plum sauce and onions for dipping.",
:date => Time.now,
:ingredients => "1 (4 pound) whole duck, dressed;
 1/2 teaspoon ground cinnamon;
 1/2 teaspoon ground ginger;
 1/4 teaspoon ground nutmeg;
 1/4 teaspoon ground white pepper;
 1/8 teaspoon ground cloves;
 3 tablespoons soy sauce;
 1 tablespoon honey;
 1 orange, sliced in rounds;
 1 tablespoon chopped fresh parsley, for garnish;
 5 green onions;
 1/2 cup plum jam;
 1 1/2 teaspoons sugar;
 1 1/2 teaspoons distilled white vinegar;
 1/4 cup finely chopped chutney",
:duration => "1 hour 35 mins",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Venison Stew I",
:photo_url =>"http://healthifiedmom.simplemama.com/files/2011/12/slow-cooker-stew.jpg",
:instruction => "In a skillet, deeply brown the meat in oil. Add onions, garlic. Worcestershire sauce, bay leaf, oregano, salt, and water. Simmer, covered, for 1 1/2 to 2 hours, or until meat is tender.
Add potatoes and carrots; cook until tender.
Combine flour and water. Stir into the stew. Remove bay leaf before serving.",
:date => Time.now,
:ingredients => "2 tablespoons vegetable oil;
 2 pounds venison stew meat;
 3 onions, chopped;
 2 cloves garlic, minced;
 1 tablespoon Worcestershire sauce;
 1 bay leaf;
 1/2 teaspoon dried oregano;
 1 tablespoon salt;
 3 cups water;
 7 small potatoes, peeled and quartered;
 1 pound carrots, cut into 1 inch pieces;
 1/4 cup all-purpose flour
",
:duration => "30 mins",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Asian Chicken Rolls",
:photo_url =>"http://s3.amazonaws.com/gmi-digital-library/2677b5c5-4ec4-4bea-8fe3-06b001d04365.jpg",
:instruction => "1. To make Chicken Rolls: Heat 1 tablespoon of oil in a large wok or skillet over medium heat. Toss chicken strips with onion and garlic powders, and stir-fry for about 5 minutes. Remove them from heat, and drain on paper towels.
2. 
Moisten rice paper wrappers, two sheets at a time, by dipping sheets in cold water for about 10 seconds. Set them aside on a flat surface until they are soft and pliable, about 1 minute. Assemble remaining ingredients in separate equal-sized piles on work surface, making sure mint and cilantro stems are trimmed. Starting with first roll on edge closest to you, place several pieces of chicken on a wrapper, and layer on top shredded carrots, leafy sprigs of cilantro and several mint leaves. Wrap up roll tightly by starting at closest rounded end, taking 1 turn. Fold in each side over filling, and continue rolling up wrapper tightly into a neat packet. Repeat process until done.
3. 
Heat remaining 1 cup of oil in a large wok or skillet over medium heat. Fry rolls until they are golden on all sides, for about 3 minutes. Remove them from heat, and drain them on paper towels.
4. 
Meanwhile, to make Dipping Sauce: Combine all ingredients, stirring until sugar dissolves. Pour into a small serving bowl.
5. 
To serve, arrange rolls on a serving plate, garnish them with crushed peanuts if desired and pass with Dipping Sauce.",
:date => Time.now,
:ingredients => "Chicken Rolls
1 tablespoon plus 1 cup vegetable oil for frying
6 ounces soy chicken strips
1 teaspoon onion powder
1 teaspoon garlic powder
6 rice paper wrappers
1 packed cup shredded carrots
12 stems cilantro, rinsed and trimmed
1/2 cup fresh mint leaves
Crushed peanuts for garnish, optional
Dipping Sauce
1/3 cup fresh lime juice
1/4 cup water
1/4 cup sugar, or to taste
1 teaspoon minced garlic
1 teaspoon Asian chili paste, or to taste
1/4 cup shredded carrots",
:duration => "1 hour",
:stars => 5,
:num_reviews=> 1,
:user_id => User.all.first.id
},
{:title =>"Shrimp Sea Scallop Kabobs",
:photo_url =>"http://s3.amazonaws.com/gmi-digital-library/99484f53-c880-4a54-a1ed-b44e371adb84.jpg",
:instruction => "Mix butter and Seasoning in small bowl. Set aside.
Alternately thread shrimp and scallops onto skewers. Brush shrimp and scallops with seasoned butter mixture.
Grill over medium heat 6 to 8 minutes or until shrimp turn pink and scallops are opaque, turning occasionally and brushing with seasoned butter mixture.",
:date => Time.now,
:ingredients => "
6 tablespoons butter, melted
4 teaspoons McCormick® Grill Mates® Roasted Garlic & Herb Seasoning
1 pound large shrimp, peeled and deveined
1 pound sea scallops",
:duration => "15 mins",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Slow & Low Memphis Pit BBQ Ribs",
:photo_url =>"http://www.mccormick.com/-/media/Recipe%20Photos/McCormick/Main%20Dishes/1007x545/Slow%20and%20Low%20Memphis%20Pit%20BBQ%20Ribs.ashx",
:instruction => "Rub Seasoning evenly over ribs. Wrap in plastic wrap and refrigerate at least 2 hours or overnight.
Prepare grill for indirect medium-low heat (275°F to 300°F). Preheat grill by turning all burners to high. Turn burner on 1 side to medium-high. Turn off burner(s) on other side.
Place unwrapped ribs on unlit side of grill. Close grill.
Grill 2 to 3 hours or until ribs are tender.",
:date => Time.now,
:ingredients => "
1 package McCormick® Grill Mates® Slow & Low Memphis Pit BBQ Rub;
2 racks pork baby back ribs (about 4 pounds)",
:duration => "10 min",
:stars => 0,
:num_reviews=> 0,
:user_id => User.all.first.id
},
{:title =>"Asian-style Vinaigrette",
:photo_url =>"http://www.recipe.com/images/asian-style-vinaigrette-RU199382-ss.jpg",
:instruction => "In a blender, combine all ingredients. Cover; blend until smooth. Chill, covered, for up to 5 days. Shake or whisk well before serving. (The dressing separates quickly.)",
:date => Time.now,
:ingredients => "1/3 cup rice vinegar
1/4 cup canola oil
1 tablespoon packed brown sugar
2 tablespoons toasted sesame oil
2 tablespoons water
1 tablespoon low-sodium soy sauce
1 tablespoon grated fresh ginger
1/2 teaspoon Dijon-style mustard",
:duration => "1 hour",
:stars => 3,
:num_reviews=> 1,
:user_id => User.all.first.id
}].each do |recipe|
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


[{:title=> "This is cool", :comment=>"The Food is really delicious.",:stars=> 4, :date=>Time.now, :recipe_id=>Recipe.all.first.id, :user_id=>User.all.first.id},
{:title=> "This is bad!", :comment=> "This isn't a good recipe.", :stars=> 1, :date=> Time.now, :recipe_id=>Recipe.all.first.id, :user_id=>User.all.first.id},
{:title=> "I love it!", :comment=> "OMG, that is purely delicious", :stars=> 5, :date=> Time.now, :recipe_id=>Recipe.all.first.id, :user_id=>User.all.first.id},
{:title=> "This is So Delicious", :comment =>"OMG, this is the best Macaroons ever!!!", :stars=> 5, :date=>Time.now, :recipe_id=>Recipe.find_by(:title=> "PISTACHIO MACARONS").id, :user_id=> User.all.first.id},
{:title=> "This is So Delicious", :comment =>"Really good", :stars=> 5, :date=>Time.now, :recipe_id=>Recipe.find_by(:title=> "Asian Chicken Rolls").id, :user_id=> User.all.second.id},
{:title=> "This is pretty cool", :comment =>"Cool!!!", :stars=> 3, :date=>Time.now, :recipe_id=>Recipe.find_by(:title=> "Asian-style Vinaigrette").id, :user_id=> User.all.second.id}
].each do |review|
  rv = Review.new
  rv.title = review[:title]
  rv.comment = review[:comment]
  rv.stars = review[:stars]
  rv.date = review[:date]
  rv.recipe_id = review[:recipe_id]
    rv.user_id = review[:user_id]
  rv.save
end

[{:name => "Breakfast"},
{:name =>"Egg"},
{:name=> "Sweet"},
{:name=> "Asian"},
{:name=> "Chicken"},
{:name=> "Vegan"},
{:name=> "Burger"},
{:name=> "Beaf"},
{:name=> "Salad"},
{:name=> "Rib"},
{:name=> "Pie"},
{:name=> "Drink"},
{:name=> "Cheese"},
{:name=> "Sour"},
{:name=> "Duck"},
{:name=> "Kabob"},
{:name=> "Shrimp"},
{:name=> "Duck"},
{:name=> "Seafood"},
{:name=> "Curry"},
{:name=> "Indian"},
{:name=> "Korean"},
{:name=> "American"},
{:name=> "Italian"},
{:name=> "French"}
].each do |tag|
  tg = Tag.new
  tg.name = tag[:name]
  tg.save
end

categories = [
{:recipe_id => Recipe.find_by(:title=>"Pancake").id, :tag_id => Tag.find_by(:name=>"Sweet").id},
{:recipe_id => Recipe.find_by(:title=>"Pancake").id, :tag_id => Tag.find_by(:name=>"Breakfast").id},
{:recipe_id => Recipe.find_by(:title=>"Omelette").id, :tag_id => Tag.find_by(:name=>"Egg").id},
{:recipe_id => Recipe.find_by(:title=>"Omelette").id, :tag_id => Tag.find_by(:name=>"Breakfast").id},
{:recipe_id => Recipe.find_by(:title=>"THAI CHICKEN CURRY").id, :tag_id => Tag.find_by(:name=>"Asian").id},
{:recipe_id => Recipe.find_by(:title=>"THAI CHICKEN CURRY").id, :tag_id => Tag.find_by(:name=>"Chicken").id},
{:recipe_id => Recipe.find_by(:title=>"THAI CHICKEN CURRY").id, :tag_id => Tag.find_by(:name=>"Curry").id},
{:recipe_id => Recipe.find_by(:title=>"PISTACHIO MACARONS").id, :tag_id => Tag.find_by(:name=>"Vegan").id},
{:recipe_id => Recipe.find_by(:title=>"KUNG PAO CHICKEN").id, :tag_id => Tag.find_by(:name=>"Asian").id},
{:recipe_id => Recipe.find_by(:title=>"KUNG PAO CHICKEN").id, :tag_id => Tag.find_by(:name=>"Chicken").id},
{:recipe_id => Recipe.find_by(:title=>"KUNG PAO CHICKEN").id, :tag_id => Tag.find_by(:name=>"Sweet").id},
{:recipe_id => Recipe.find_by(:title=>"CROCK POT RIBS").id, :tag_id => Tag.find_by(:name=>"Rib").id},
{:recipe_id => Recipe.find_by(:title=>"CHOPPED SALAD").id, :tag_id => Tag.find_by(:name=>"Salad").id},
{:recipe_id => Recipe.find_by(:title=>"CHOPPED SALAD").id, :tag_id => Tag.find_by(:name=>"Breakfast").id},
{:recipe_id => Recipe.find_by(:title=>"Deep-Dish Apple Pie").id, :tag_id => Tag.find_by(:name=>"Pie").id},
{:recipe_id => Recipe.find_by(:title=>"Juicy Grilled Cheeseburgers").id, :tag_id => Tag.find_by(:name=>"Burger").id},
{:recipe_id => Recipe.find_by(:title=>"Juicy Grilled Cheeseburgers").id, :tag_id => Tag.find_by(:name=>"Cheese").id},
{:recipe_id => Recipe.find_by(:title=>"Burger of the Gods").id, :tag_id => Tag.find_by(:name=>"Burger").id},
{:recipe_id => Recipe.find_by(:title=>"Burger of the Gods").id, :tag_id => Tag.find_by(:name=>"Cheese").id},
{:recipe_id => Recipe.find_by(:title=>"Peking Duck").id, :tag_id => Tag.find_by(:name=>"Asian").id},
{:recipe_id => Recipe.find_by(:title=>"Peking Duck").id, :tag_id => Tag.find_by(:name=>"Duck").id},
{:recipe_id => Recipe.find_by(:title=>"Asian Chicken Rolls").id, :tag_id => Tag.find_by(:name=>"Asian").id},
{:recipe_id => Recipe.find_by(:title=>"Asian Chicken Rolls").id, :tag_id => Tag.find_by(:name=>"Chicken").id},
{:recipe_id => Recipe.find_by(:title=>"Asian Chicken Rolls").id, :tag_id => Tag.find_by(:name=>"Egg").id},
{:recipe_id => Recipe.find_by(:title=>"Asian Chicken Rolls").id, :tag_id => Tag.find_by(:name=>"Breakfast").id},
{:recipe_id => Recipe.find_by(:title=>"Shrimp Sea Scallop Kabobs").id, :tag_id => Tag.find_by(:name=>"Kabob").id},
{:recipe_id => Recipe.find_by(:title=>"Shrimp Sea Scallop Kabobs").id, :tag_id => Tag.find_by(:name=>"Shrimp").id},
{:recipe_id => Recipe.find_by(:title=>"Shrimp Sea Scallop Kabobs").id, :tag_id => Tag.find_by(:name=>"Seafood").id},
{:recipe_id => Recipe.find_by(:title=>"Slow & Low Memphis Pit BBQ Ribs").id, :tag_id => Tag.find_by(:name=>"Rib").id},
{:recipe_id => Recipe.find_by(:title=>"Asian-style Vinaigrette").id, :tag_id => Tag.find_by(:name=>"Asian").id},
{:recipe_id => Recipe.find_by(:title=>"Asian-style Vinaigrette").id, :tag_id => Tag.find_by(:name=>"Vegan").id},
{:recipe_id => Recipe.find_by(:title=>"Asian-style Vinaigrette").id, :tag_id => Tag.find_by(:name=>"Drink").id},
{:recipe_id => Recipe.find_by(:title=>"Asian-style Vinaigrette").id, :tag_id => Tag.find_by(:name=>"Sour").id}
]

categories.each do |category|
  cat = Category.new
  cat.recipe_id = category[:recipe_id]
  cat.tag_id = category[:tag_id]
  cat.save
end

