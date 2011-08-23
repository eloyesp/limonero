module Personas
  class Address < ActiveRecord::Base
    belongs_to :taddress
    belongs_to :person
    #belongs_to :city
  end
end
