class ResponsesController < ApplicationController
  def create
    @question = Question.find params[:question_id]
    @response = @question.responses.new params[:response]
    @response.save

    redirect_to poll_path @question.poll
  end
end
