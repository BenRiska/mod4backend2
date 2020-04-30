class TransactionsController < ApplicationController
    def index 
        transactions = Transaction.all
        render json: transactions, include: ["currency", "user"]
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction, include: ["currency", "user"]
    end
end
