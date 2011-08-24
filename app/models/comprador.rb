class Comprador < ActiveRecord::Base
  belongs_to :contrato
  belongs_to :person, :class_name => "Personas::Person"
end
