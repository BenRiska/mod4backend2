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
    
 
        Transaction.create(date: DateTime.now, amount: params[:amount], currency: Currency.find(params[:currency]), user: payee, status: "sent", message: params[:message] )
        Transaction.create(date: DateTime.now, amount: params[:amount], currency: Currency.find(params[:currency]), user: reciever, status: "recieved",message: params[:message])
        # payee.removeFunds(params[:amount])
        # payee.update
          render json: payee, include: ["currencies", "transactions"]
    end
end


