class Contrato < ActiveRecord::Base
  belongs_to :avaluo
  has_many :compradores
  has_many :personas, :through => :compradores
end
