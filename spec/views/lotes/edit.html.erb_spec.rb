require 'spec_helper'

describe "lotes/edit.html.erb" do
  before(:each) do
    @lote = assign(:lote, stub_model(Lote,
      :manzana => "MyString",
      :loteo => "MyString",
      :parcela => "MyString",
      :partida => "MyString"
    ))
  end

  it "renders the edit lote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lotes_path(@lote), :method => "post" do
      assert_select "input#lote_manzana", :name => "lote[manzana]"
      assert_select "input#lote_loteo", :name => "lote[loteo]"
      assert_select "input#lote_parcela", :name => "lote[parcela]"
      assert_select "input#lote_partida", :name => "lote[partida]"
    end
  end
end
