class Transaction < ActiveRecord::Base
  belongs_to :account

  after_save :update_account_balance

  validates :descr, presence: true
  validates :amount, numericality: { only_integer: true }

  protected
    def update_account_balance
      account.update_balance!
    end
end
