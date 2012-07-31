class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find params[:id]
    puts "Hit polls#show"
  end

  def new
    @poll = Poll.new 
  end

  def create
    @poll = Poll.create! params[:poll]

    redirect_to edit_poll_path @poll
  end

  def edit
    @poll = Poll.find params[:id]
  end

  def update
    @poll = Poll.find params[:id]
    @poll.update_attributes params[:poll]

    redirect_to edit_poll_path @poll
  end

end
