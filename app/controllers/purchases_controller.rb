class PurchasesController < ApplicationController
    before_action :find_event, except: [:index]

    def index
        @purchases = Purchase.all
    end 

    def show
    end 

    def confirmation
    end 

    private

    def find_purchase
        @purchase = @purchase = Purchase.find_by_uuid(params[:id])
    end 
end