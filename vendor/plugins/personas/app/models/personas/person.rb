module Personas
  class Person < ActiveRecord::Base
    def self.table_name
      "personas_people"
    end
    has_many :addresses
    belongs_to :civil
    belongs_to :sexo
    belongs_to :tdoc
  end
end
