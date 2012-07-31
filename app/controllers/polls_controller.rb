class PollsController < ApplicationController
  def index
    @polls = Poll.all
    puts "Yo, dawg, I heard you liked polls#index, so I puts polls#index in your polls#index"
  end

  def show
    @poll = Poll.find params[:id]
    puts "Hit polls#show"
  end
end
