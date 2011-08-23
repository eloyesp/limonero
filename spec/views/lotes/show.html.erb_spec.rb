require 'spec_helper'

describe "lotes/show.html.erb" do
  before(:each) do
    @lote = assign(:lote, stub_model(Lote,
      :manzana => "Manzana",
      :loteo => "Loteo",
      :parcela => "Parcela",
      :partida => "Partida"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manzana/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loteo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parcela/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partida/)
  end
end
