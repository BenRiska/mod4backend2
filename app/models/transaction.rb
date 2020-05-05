class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :currency

  def removeFunds (amount)
    self.amount -= amount
  end
end
