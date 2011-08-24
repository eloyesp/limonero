require 'spec_helper'

describe Comprador do
  it { should belong_to(:person) }
  it { should belong_to(:contrato) }
end
