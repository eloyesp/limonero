require 'spec_helper'

describe "Avaluos" do
  describe "GET /avaluos" do
    it "works! (now write some real specs)" do
      get lote_avaluos_path(Factory(:lote))
      response.status.should be(200)
    end
  end
end
