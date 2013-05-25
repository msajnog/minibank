class Client < ActiveRecord::Base
  has_many :accounts

  validates :name, :surname, length: { minimum: 2 }
  validates :email, format: { with: /\A.+@.+\z/ }
  validates :phone, format: { with: /\A\d{3}-\d{3}-\d{3}/ }

  def to_s
    "#{name} #{surname} (#{id})"
  end

end
