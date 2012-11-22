require 'spec_helper'

describe "alumnos/index" do
  before(:each) do
    assign(:alumnos, [
      stub_model(Alumno,
        :nc => "Nc",
        :nombre => "Nombre",
        :email => "Email",
        :password => "Password",
        :avance => 1.5
      ),
      stub_model(Alumno,
        :nc => "Nc",
        :nombre => "Nombre",
        :email => "Email",
        :password => "Password",
        :avance => 1.5
      )
    ])
  end

  it "renders a list of alumnos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
