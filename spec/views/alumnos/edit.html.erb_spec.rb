require 'spec_helper'

describe "alumnos/edit" do
  before(:each) do
    @alumno = assign(:alumno, stub_model(Alumno,
      :nc => "MyString",
      :nombre => "MyString",
      :email => "MyString",
      :password => "MyString",
      :avance => 1.5
    ))
  end

  it "renders the edit alumno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alumnos_path(@alumno), :method => "post" do
      assert_select "input#alumno_nc", :name => "alumno[nc]"
      assert_select "input#alumno_nombre", :name => "alumno[nombre]"
      assert_select "input#alumno_email", :name => "alumno[email]"
      assert_select "input#alumno_password", :name => "alumno[password]"
      assert_select "input#alumno_avance", :name => "alumno[avance]"
    end
  end
end
