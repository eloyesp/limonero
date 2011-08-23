class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.string :manzana
      t.string :loteo
      t.string :parcela
      t.string :partida

      t.timestamps
    end
  end
end
