class WordinatorController < ApplicationController

  def index
    @word_one, @word_two = params[:one], params[:two]
    render JSON:
  end
end
