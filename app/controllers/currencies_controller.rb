class CurrenciesController < ApplicationController
    def index 
        currencies = Currency.all
        render json: currencies, include: ["transactions", "users"]
    end

    def show
        currency = Currency.find(params[:id])
        render json: currency, include: ["transactions", "users"]
    end
end
