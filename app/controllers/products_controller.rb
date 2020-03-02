class ProductsController < ApplicationController
    def index
        
        @products = Product.all
    end
    def show
    end

    private 
    def user_params
        params.require(:product).permit(:brand_id, :product_name, :product_image, :price)
    end
end
