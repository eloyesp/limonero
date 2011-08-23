FactoryGirl.define do
  
  factory :tdoc, :class => "Personas::Tdoc" do
    name "DNI"
  end

  factory :civil, :class => "Personas::Civil" do
    name "soltero"
  end

  factory :persona, :class => "Personas::Person" do

    factory :juan_perez do
      name              "Juan Perez Fernandez"
      born              "1981-01-01"
      doc               "28.644.242"
      association       :tdoc
      association       :civil
      observaciones     "Un amigo"
    end
  end

  factory :avaluo do
  end

  factory :contrato do
  end

  factory :lote do
    sequence(:partida) { |n| "#{n}-virtual" }
  end
end