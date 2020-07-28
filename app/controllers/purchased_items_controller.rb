class PurchasedItemsController < ApplicationController

    def new
        byebug
    
    end

    private

    def purchase_params
        params.require(:purchased_item).permit(:name, :product_type, :price, :condition, :color, :img_url)
    end
    
end
