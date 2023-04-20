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

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to shop_path(@shop.id)
    else
      render :edit
    end
  end

  private
  def shop_params
    params.require(:shop).permit(:image, :store_name, :category_id, :menu, :place, :store_url, :memo, :interesting_store_id).merge(user_id: current_user.id)
  end
end
