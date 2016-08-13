class AnswersController < ApplicationController
	before_action :load_question, only: [:new, :create]

  def new
    @answer = Answer.new
  end

  def create
    @Answer = Answer.new(answer_params)
    
    if @answer.save
      redirect_to @answer
    else
      render :new
    end
  end
end