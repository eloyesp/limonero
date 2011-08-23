module Personas
  class Person < ActiveRecord::Base
    has_many :addresses
    belongs_to :civil
    belongs_to :sexo
    belongs_to :tdoc
  end
end
