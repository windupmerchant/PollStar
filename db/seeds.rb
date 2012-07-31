# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
def coin_flip
  rand(2)
end
@p = 10 ; @qpp = 6

@p.times do |n|
  Poll.create!( :title => Faker::Company.catch_phrase,
                :description => Faker::Lorem.paragraph,
                :maker_url => "http://www.youtube.com/watch?v=oHg5SJYRHA0",
                :taker_url => "http://google.com" )
end

Poll.all.each do |poll|
  @qpp.times do |n|
    poll.questions.create!( :interrogative => "How do you feel about #{Faker::Address.us_state}?",
                            :context => Faker::Lorem.sentence(7) )
  end
end

Question.all.each do |question|
  coin_flip.odd? ? input = "I don't like it." : input = "I truly love it."
  question.answer input
  p "question #{question.id} answered."
end

p "Seeded #{@p} polls, each with #{@qpp} questions."