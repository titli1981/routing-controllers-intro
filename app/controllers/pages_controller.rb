class PagesController < ApplicationController
  def welcome

    @header = "Welcome to Madhu's website"
  end

  def about
    @header = "I am at bitamker."
  end

  def contest
    @header = "I am not sure what goes here"
  end
  def kitten
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}"
  end

end
