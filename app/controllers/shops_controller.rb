class ShopsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  def index
    @shops = Shop.order('created_at DESC')
  end

  def new
    @shop = Shop.new
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
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop.id)
    else
      render :edit
    end
  end

  def destroy
    if @shop.destroy
      redirect_to root_path
    else
    render :index
    end
  end


  private
  def shop_params
    params.require(:shop).permit(:image, :store_name, :category_id, :menu, :place, :store_url, :memo, :interesting_store_id).merge(user_id: current_user.id)
  end

  def set_item
    @shop = Shop.find(params[:id])
  end
end
