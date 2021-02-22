class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @asking = params[:answer]

    if @asking.end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      case @asking 
      when 'hello'
        @answer = 'hello there'
      when 'what time is it?'
        @answer = Time.now
      when 'I am going to work'
        @answer = 'Great!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end