class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
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

  end
  def kittens

  end
  def set_kitten_url
      requested_size = params[:size]
      @kitten_url = "http://placekitten.com/#{requested_size}"
  end


end
