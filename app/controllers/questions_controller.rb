class QuestionsController < ApplicationController
  def create
    @poll = Poll.find params[:poll_id]
    @poll.questions.create params[:question]

    redirect_to edit_poll_path @poll
  end

  def new
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    @question = Question.find params[:id]
    @question.update_attributes params[:question]

    redirect_to edit_poll_path @question.poll
  end
end
