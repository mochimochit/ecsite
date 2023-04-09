class ItemsController < ApplicationController
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.create params.require(:item).permit(:name, item_imgs:[]) 
        redirect_to @item
    end
    
    def show
        @item = Item.find(params[:id])
    end
    
    def edit
        @item = Item.find(params[:id]) 
    end
    
    def update
        @item = Item.find(params[:id])
        @item.update params.require(:item).permit(:name, item_imgs:[]) 
        redirect_to @item
    end
end