class Question < ActiveRecord::Base
  attr_accessible :context, :interrogative, :poll_id
  belongs_to :poll
  has_many :responses

  def answer(input)
    self.responses.create! :body => input
  end
end
