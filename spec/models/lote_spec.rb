require 'spec_helper'

describe Lote do
  it { should have_many :avaluos }

  context 'si el lote no esta vendido' do
    subject { Factory(:lote) }

    its(:titular) { should be_nil}
    its(:estado) { should == "Sin vender"}
    its(:contrato) { should be_nil }
    it { should_not be_pagable }
  end

  context 'si el lote fue vendido' do
    subject do
      @lote = Factory(:lote)
      @avaluo = Factory(:avaluo, :lote => @lote)
      @contrato = Factory(:contrato, :avaluo => @avaluo, :persons => [Factory(:juan_perez)])
      @lote
    end

    its(:titular) { should == "Juan Perez Fernandez" }
    its(:estado) { should == "Vendido"}
    its(:contrato) { should == @contrato }
    it { should be_pagable }
  end
end
