class FavoriteController < ApplicationController

    def index
      @products = current_user.favorite_products.paginate(:page => params[:page], :per_page => 9)
    end

end
