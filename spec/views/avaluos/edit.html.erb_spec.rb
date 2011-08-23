require 'spec_helper'

describe "avaluos/edit.html.erb" do
  before(:each) do
    @avaluo = assign(:avaluo, stub_model(Avaluo,
      :ncuotas => 1,
      :cuota_cents => 1,
      :cuota_inicial => 1,
      :cuota_currency => "MyString",
      :interes => 1.5,
      :lote_id => 1,
      :observaciones => "MyText"
    ))
  end

  it "renders the edit avaluo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avaluos_path(@avaluo), :method => "post" do
      assert_select "input#avaluo_ncuotas", :name => "avaluo[ncuotas]"
      assert_select "input#avaluo_cuota_cents", :name => "avaluo[cuota_cents]"
      assert_select "input#avaluo_cuota_inicial", :name => "avaluo[cuota_inicial]"
      assert_select "input#avaluo_cuota_currency", :name => "avaluo[cuota_currency]"
      assert_select "input#avaluo_interes", :name => "avaluo[interes]"
      assert_select "input#avaluo_lote_id", :name => "avaluo[lote_id]"
      assert_select "textarea#avaluo_observaciones", :name => "avaluo[observaciones]"
    end
  end
end
