# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
@p = 10 ; @qpp = 9

@p.times do |n|
  Poll.create!( :title => Faker::Company.catch_phrase,
                :description => Faker::Lorem.paragraph,
                :maker_url => "http://www.youtube.com/watch?v=oHg5SJYRHA0",
                :taker_url => "http://google.com" )
end

Poll.all.each do |poll|
  @qpp.times do |n|
    poll.questions.create!( :interrogative => "#{n}. How do you feel about #{Faker::Address.us_state}?",
                            :context => Faker::Lorem.sentence(7) )
  end
end

p "Seeded #{@p} polls, each with #{@qpp} questions."