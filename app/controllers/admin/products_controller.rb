class Admin::ProductsController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find_by_friendly_id!(params[:id])
  end

  def destroy
    @product = Product.find_by_friendly_id!(params[:id])

    @product.destroy
    flash[:notice] = "成功将 #{@product.title} 删除!"
    redirect_to admin_products_path
  end

  def update
    @product = Product.find_by_friendly_id!(params[:id])


    if @product.update(product_params)
      flash[:warning] = "成功将333!"
      redirect_to admin_products_path

    else
      render :edit
    end
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end
end
