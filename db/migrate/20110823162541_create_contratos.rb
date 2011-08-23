class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.date :inicio
      t.integer :avaluo_id

      t.timestamps
    end
  end
end
