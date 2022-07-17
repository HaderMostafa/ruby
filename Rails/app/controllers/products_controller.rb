class ProductsController < ApplicationController
  http_basic_authenticate_with name:"iti1", "password": "iti1"
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # params[:article][:title]
    # params[:article][:body]
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :image ,:admin_id)
  end

end
