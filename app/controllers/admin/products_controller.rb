class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_require
  layout "admin"

  def index
    if params[:category].blank?
      @products = Product.all
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def new
    @product = Product.new
    @photo = @product.photos.build                   #在内存新建多图对象，build多用于一对多的情况
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]

    if @product.save
      #若有图片，则调用create将图片存入数据库
      if params[:photos] != nil
        params[:photos]['avatar'].each do |a|
          @photo = @product.photos.create(:avatar => a)  #使用params[:photos][avatar]來存多个图片
      end
    end
    redirect_to admin_products_path,notice:"创建成功！"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def update
    @product = Product.find(params[:id])
    @product.category_id = params[:category_id]

    if params[:photos] != nil
      @product.photos.destroy_all   #先清除原有的图片

      params[:photos]['avatar'].each do |a|
        @photo = @product.photos.create(:avatar => a)
      end
    end

    if @product.update(product_params)
      redirect_to admin_products_path,notice: "更新成功！"
    else
      render :edit
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Product deleted!"
    redirect_to admin_products_path
  end

  private

    def product_params
      params.require(:product).permit(:title, :description, :price, :quantity, :category_id)
    end

end
