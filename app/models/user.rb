class User < ApplicationRecord
    has_many :transactions 
    has_many :currencies, through: :transactions
end
