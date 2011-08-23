class Avaluo < ActiveRecord::Base
  belongs_to :lot
  has_many :payments
end
