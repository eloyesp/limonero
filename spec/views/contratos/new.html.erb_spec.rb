require 'spec_helper'

describe "contratos/new.html.erb" do
  before(:each) do
    assign(:contrato, stub_model(Contrato,
      :avaluo_id => 1
    ).as_new_record)
  end

  it "renders new contrato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contratos_path, :method => "post" do
      assert_select "input#contrato_avaluo_id", :name => "contrato[avaluo_id]"
    end
  end
end
