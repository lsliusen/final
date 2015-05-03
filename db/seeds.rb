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

[{:title => 'Pancake', :photo_url => 'http://img5.imgtn.bdimg.com/it/u=1418365513,387621520&fm=21&gp=0.jpg', :instruction => 'pancake_instruction', :date => '2015-05-01 00:00:00'},
{:title =>'Omelette', :photo_url => 'http://wishfulchef.cdn.kinsta.com/wp-content/uploads/2011/09/SalmonPotatoOmelette.jpg', :instruction => 'omelette_instruction', :date => '2015-05-01 01:00:00'},
].each do |recipe|
    rcp = Recipe.new
    rcp.title = recipe[:title]
    rcp.photo_url = recipe[:photo_url]
    rcp.instruction = recipe[:instruction]
    rcp.date = recipe[:date]
    rcp.save
end

[{:title => 'OK', :comment => 'Good.', :rating => 3, :date => '2015-05-01 02:00:00', :recipe_id => 1}
].each do |review|
    rv = Review.new
    rv.title = review[:title]
    rv.comment = review[:comment]
    rv.rating = review[:rating]
    rv.date = review[:date]
    rv.recipe_id = review[:recipe_id]
    rv.save
end

[{:name => 'breakfast'},
{:name => 'egg'},
{:name => 'sweet'}
].each do |tag|
    tg = Tag.new
    tg.name = tag[:name]
    tg.save
end



