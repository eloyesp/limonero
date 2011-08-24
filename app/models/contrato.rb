class Contrato < ActiveRecord::Base
  belongs_to :avaluo
  has_many :compradores
  has_many :persons,
           :through => :compradores,
           :class_name => "Personas::Person",
           :source => :person
end
