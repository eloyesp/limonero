require 'spec_helper'

describe Contrato do
  it { should belong_to(:avaluo) }
  it { should have_many(:compradores) }
  it { should have_many(:persons) }
end
