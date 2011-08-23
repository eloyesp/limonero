class Avaluo < ActiveRecord::Base
  belongs_to :lote
  has_many :contratos

  # El contrato vigente
  def contrato
    contratos.last
  end

  # Asignación de un contrato
  def contrato=(contrato)
    contratos << contrato
  end
end
