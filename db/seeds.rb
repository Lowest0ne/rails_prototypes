# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

slides = (1..14).to_a.map{|n| n.to_s }

names = slides.map do |n|

  if n.length < 2
    n = '0' + n
  end
  n
end


names.map{ |s| './db/seed_slides/' + s + '.html' }.each_with_index do | file_name, idx |
  content  = File.read( file_name )
  slide = Slide.find_or_create_by( content: content )
end

