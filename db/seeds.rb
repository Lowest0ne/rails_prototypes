# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first  = Slide.find_or_create_by( content: '<p>This is the first slide</p>' )
second = Slide.find_or_create_by( content: '<p>This is the second slide</p>' )

first.next = second
first.save!

second.previous = first
second.save!

CurrentSlide.create( slide_id: first.id )
