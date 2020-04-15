class ProductsController < ApplicationController
    def index  
        @products = Product.all
    end
    def show
    end

    private 
    def product_params
        params.require(:product).permit(:brand_id, :product_name, :product_image, :price, :brand_name)
    end
end
