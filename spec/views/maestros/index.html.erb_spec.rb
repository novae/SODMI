require 'spec_helper'

describe "maestros/index" do
  before(:each) do
    assign(:maestros, [
      stub_model(Maestro,
        :idmaestro => 1,
        :nombre => "Nombre",
        :email => "Email",
        :fotografia => "Fotografia",
        :password => "Contrasena"
      ),
      stub_model(Maestro,
        :idmaestro => 1,
        :nombre => "Nombre",
        :email => "Email",
        :fotografia => "Fotografia",
        :password => "Contrasena"
      )
    ])
  end

  it "renders a list of maestros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fotografia".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contrasena".to_s, :count => 2
  end
end
