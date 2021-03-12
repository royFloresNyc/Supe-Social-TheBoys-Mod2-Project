class ChargesController < ApplicationController
    def new
    end
    
    def create
        # Amount in cents
        customer = Stripe::Customer.create({
            email: params[:stripeEmail],
            source: params[:stripeToken],
        })
        
        charge = Stripe::Charge.create({
            customer: customer.id,
            amount: params[:amount],
            currency: 'usd',
        })

        amount_in_dollars = params[:amount].to_i / 100

        purchase = Purchase.create(cart_id: params[:cart_id], customer_name: params[:customer_name],
            customer_email: params[:stripeEmail], shipping_address: params[:shipping_address], card: params[:stripeToken],
            amount: amount_in_dollars, currency: charge.currency, uuid: SecureRandom.uuid)

        redirect_to confirmation_path(id: purchase.uuid) 
    
    rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end
end