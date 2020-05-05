class TransactionsController < ApplicationController
    def index 
        transactions = Transaction.all
        render json: transactions, include: ["currency", "user"]
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction, include: ["currency", "user"]
    end

    def sent 
        payee = User.find(params[:id])
        reciever = User.find(params[:user])
        Transaction.create(date: DateTime.now, amount: params[:amount], currency: Currency.find(params[:currency]), user: reciever)
        payee.removeFunds(params[:amount])
        payee.update
        render json: payee, include: ["currency", "transactions"]
    end
end
