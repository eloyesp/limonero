require 'spec_helper'

describe "contratos/edit.html.erb" do
  before(:each) do
    @contrato = assign(:contrato, stub_model(Contrato,
      :avaluo_id => 1
    ))
  end

  it "renders the edit contrato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contratos_path(@contrato), :method => "post" do
      assert_select "input#contrato_avaluo_id", :name => "contrato[avaluo_id]"
    end
  end
end
