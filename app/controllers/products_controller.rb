class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]
  before_filter :authenticate_user! , only: [:favorite]

  def index
    if params[:category].blank?
      @products = Product.paginate(:page => params[:page], :per_page => 9)
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id).paginate(:page => params[:page], :per_page => 9)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @quantity = params[:quantity].to_i
    @child_quantity = params[:child_quantity].to_i

    if !current_cart.products.include?(@product)
      if @quantity <= @product.quantity && @child_quantity <= @product.child_quantity
        current_cart.add_product_to_cart(@product, @quantity, @child_quantity)
        flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
      else
        flash[:warning] = "你选择的商品数量超过库存，请重新选择！"
      end
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back
  end

  def favorite
    @product = Product.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorite_products << @product
      redirect_to :back
    else
      current_user.favorite_products.delete(@product)
      redirect_to :back
    end
  end


  # --search 商品搜索--
  def search
    if @query_string.present?
      @products = search_params.paginate(:page => params[:page], :per_page => 9)
  end

  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
  end

  private

  def search_params
    Product.ransack({:title_or_description_cont => @query_string}).result(distinct: true)
  end

end
