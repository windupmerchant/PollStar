class Poll < ActiveRecord::Base
  attr_accessible :description, :maker_url, :taker_url, :title
  has_many :questions
  before_create :build_urls
  validates_uniqueness_of :maker_url, :taker_url

  def build_urls
    self.maker_url = SecureRandom.urlsafe_base64(6)
    self.taker_url = SecureRandom.urlsafe_base64(6)
  end
end
