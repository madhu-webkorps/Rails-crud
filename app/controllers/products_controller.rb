class ProductsController < ApplicationController
    def new 
        if params[:seller_id].present?
            @product = Product.new(seller_id: params[:seller_id])
        elsif params[:buyer_id].present?
            @product = Product.new(buyer_id: params[:buyer_id])
        else
            @product = Product.new
        end
    end

    def create
        @product = Product.new(product_params)
        if @product.save
        else
            # rnder create page agian
        end
        user_id = @product.seller_id || @product.buyer_id
        redirect_to user_path(user_id)
    end

    def edit 
        @product = Product.where(id: params[:id]).first
    end

    def update 
        @product = Product.where(id: params[:id]).first
        if @product.update_attributes(product_params)
            redirect_to products_path
        else
            # rnder update page agian
        end
    end

    def destroy 
        @product = Product.where(id: params[:id]).first
        if @product.destroy
            redirect_to products_path
        else
            # rnder destroy page agian
        end
    end

    private

    def product_params
         params.require(:product).permit(:name , :price ,:description, :seller_id, :buyer_id)
   end
            

end
