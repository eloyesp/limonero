require 'spec_helper'

describe Lot do
  it { should have_many :avaluos }

  context 'si el lote no esta vendido' do
    subject { Factory(:lote) }

    its(:titular) { should be_nil}
    its(:estado) { should == "Sin vender"}
    its(:payment_actual) { should be_nil }
    it { should_not be_pagable }
  end

  context 'si el lote fue vendido' do
    subject do
      @lote = Factory(:lote)
      @avaluo = Factory(:avaluo, :lot => @lote)
      @payment = Factory(:payment, :avaluo => @avaluo)
      @contrato = Factory(:contrato_de_juan_perez, :payment => @payment)
      @lote
    end

    its(:titular) { should == "Juan" }
    its(:estado) { should == "Vendido"}
    its(:payment_actual) { should == @payment }
    it { should be_pagable }
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
