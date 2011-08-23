class CreateAvaluos < ActiveRecord::Migration
  def change
    create_table :avaluos do |t|
      t.integer :ncuotas
      t.integer :cuota_cents
      t.integer :cuota_inicial
      t.string  :cuota_currency, :limit => 3
      t.float   :interes
      t.integer :lote_id
      t.text    :observaciones

      t.timestamps
    end
  end
end
