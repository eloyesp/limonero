require 'spec_helper'

describe "lotes/new.html.erb" do
  before(:each) do
    assign(:lote, stub_model(Lote,
      :manzana => "MyString",
      :loteo => "MyString",
      :parcela => "MyString",
      :partida => "MyString"
    ).as_new_record)
  end

  it "renders new lote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lotes_path, :method => "post" do
      assert_select "input#lote_manzana", :name => "lote[manzana]"
      assert_select "input#lote_loteo", :name => "lote[loteo]"
      assert_select "input#lote_parcela", :name => "lote[parcela]"
      assert_select "input#lote_partida", :name => "lote[partida]"
    end
  end
end
