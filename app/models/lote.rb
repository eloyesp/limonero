# coding: utf-8
 
class Lote < ActiveRecord::Base
  # El modelo central del sistema, guarda datos catastrales reales de cada lotee.
  has_many :avaluos

  # Si el lotee está vendido, indica el nombre del comprador.
  def titular
    contrato.try(:compradores).try(:first).try(:person).try(:name)
  end

  # Indica si el lote fue vendido o no.
  def estado
    if titular
      "Vendido"
    else
      "Sin vender"
    end
  end

  # Indica si pueden realizarse pagos (si el lote fue vendido o no).
  def pagable?
    (titular)
  end

  # Indica contrato en caso de estar vendido.
  def contrato
    avaluo.try(:contrato)
  end

  # El avaluo actual
  def avaluo
    avaluos.last
  end
end
