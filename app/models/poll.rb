class Poll < ActiveRecord::Base
  attr_accessible :description, :maker_url, :taker_url, :title
  has_many :questions
  before_create :build_urls
end
