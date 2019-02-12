class Topup < ApplicationRecord
  validates :mobile_number, :amount, presence:true
end
