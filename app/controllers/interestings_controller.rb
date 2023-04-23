class InterestingsController < ApplicationController
  def index
    @shops = Shop.order('created_at DESC')
  end
end
