class Account < ActiveRecord::Base
  belongs_to :client
  has_many :transactions

  validates :balance, numericality: { only_integer: true }

  before_create :set_number

  def to_s
    "[#{number}] #{balance} zl"
  end

  def update_balance!
    sum = transactions.map { |t| t.amount }.sum
    update_attribute(:balance, sum)
  end

  protected
    def set_number
      self.number = rand 1_000_000_000
    end
end
