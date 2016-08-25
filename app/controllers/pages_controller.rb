class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "Welcome to Madhu's website"
  end

  def about
    @header = "I am at bitamker."
  end

  def contest
    #@header = "I am not sure what goes here"
    flash[:notice] = "Sorry, the contest has ended "
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
      requested_size = params[:size]
      @kitten_url = "http://placekitten.com/#{requested_size}"
  end

  def secrets
    #@user_magic_word = params[:magic_word]
    my_magic_word = "magic"
    if my_magic_word == params[:magic_word]
      @result = "the secret is correct"
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to "/welcome"

    end

  end


end
