class CreateCompradores < ActiveRecord::Migration
  def change
    create_table :compradores do |t|
      t.integer :person_id
      t.integer :contrato_id

      t.timestamps
    end
  end
end
