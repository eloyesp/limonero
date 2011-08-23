require 'spec_helper'

describe "avaluos/index.html.erb" do
  before(:each) do
    assign(:avaluos, [
      stub_model(Avaluo,
        :ncuotas => 1,
        :cuota_cents => 1,
        :cuota_inicial => 1,
        :cuota_currency => "Cuota Currency",
        :interes => 1.5,
        :lote_id => 1,
        :observaciones => "MyText"
      ),
      stub_model(Avaluo,
        :ncuotas => 1,
        :cuota_cents => 1,
        :cuota_inicial => 1,
        :cuota_currency => "Cuota Currency",
        :interes => 1.5,
        :lote_id => 1,
        :observaciones => "MyText"
      )
    ])
  end

  it "renders a list of avaluos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cuota Currency".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
