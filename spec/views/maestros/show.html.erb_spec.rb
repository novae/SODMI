require 'spec_helper'

describe "maestros/show" do
  before(:each) do
    @maestro = assign(:maestro, stub_model(Maestro,
      :idmaestro => 1,
      :nombre => "Nombre",
      :email => "Email",
      :fotografia => "Fotografia",
      :password => "Contrasena"
    ))
  end

 
end
