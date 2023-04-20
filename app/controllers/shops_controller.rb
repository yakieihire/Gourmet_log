class ShopsController < ApplicationController
  def index
    @shops = Shop.order('created_at DESC')
  end

  def new
    @Shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def shop_params
    params.permit(:image, :store_name, :category_id, :menu, :place, :store_url, :memo, :interesting_store_id).merge(user_id: current_user.id)
  end
end
