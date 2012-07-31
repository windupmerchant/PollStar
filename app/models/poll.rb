class Poll < ActiveRecord::Base
  attr_accessible :description, :maker_url, :taker_url, :title
  has_many :questions
end
