class SuckerController < ApplicationController

  def show
    @tweet = Sucker.new('boobs').last_tweet
  end

end
