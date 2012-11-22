# == Schema Information
#
# Table name: maestros
#
#  id              :integer(4)      not null, primary key
#  idmaestro       :string(8)       not null
#  nombre          :string(50)
#  email           :string(80)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#  remember_token  :string(255)
#

require 'spec_helper'

describe Maestro do
 
  before do
    @maestro = Maestro.new(idmaestro:"idexp",nombre: "Example User", email: "user@example.com",fotografia:"direcion_foto",password:"foobar",password_confiramation:"foobar")
  end

  subject { @maestro }

   it { should respond_to(:nombre) }
  it { should respond_to(:fotografia) }
  it { should respond_to(:email) }
  it { should respond_to(:idmaestro) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) } 

  it { should be_valid }

  describe "cuando no se introduce el nombre" do
    before { @maestro.nombre = " " }
    it { should_not be_valid }
  end
   describe "cuando no se introduce el email" do
    before { @maestro.email = " " }
    it { should_not be_valid }
  end
   describe "cuando el email es invalido" do
    it "Tiene que ser valido" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @maestro.email = invalid_address
        @maestro.should_not be_valid
      end      
    end
  end

  describe "cuando el formato de email es valido" do
    it "tiene que ser valido" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @maestro.email = valid_address
        @maestro.should be_valid
      end      
    end
  end
  describe "cuando ya se ha registrado un maestro con el mismo id" do
    before do
      maestro_with_same_idmaestro = @maestro.dup
      maestro_with_same_idmaestro.save
    end

    it { should_not be_valid }
  end
  
  describe "cuando no se ha ingresado el password" do
  before { @maestro.password = @maestro.password_confirmation = " " }
  it { should_not be_valid }
  end
  describe "cuando no coincide la confirmacion del password" do
  before { @maestro.password_confirmation = "mismatch" }
  it { should_not be_valid }
  end
  describe "cuando el password es  nil" do
  before { @maestro.password_confirmation = nil }
  it { should_not be_valid }
  end
  describe "regresa el valor de metodo de autenticacion" do
  before { @maestro.save }
  let(:found_maestro) { Maestr.find_by_idmaestr(@maestro.idmaestro) }

  describe "con el password valido" do
    it { should == found_maestro.authenticate(@maestro.password) }
  end

  describe "con un password invalido" do
    let(:maestro_for_invalid_password) { found_maestro.authenticate("invalid") }

    it { should_not == maestro_for_invalid_password }
    specify { maestro_for_invalid_password.should be_false }
  end
end
describe "con un password demasiadmo pequeno" do
  before { @maestro.password = @maestro.password_confirmation = "a" * 5 }
  it { should be_invalid }
end
describe "remember token" do
    before { @maestro.save }
    its(:remember_token) { should_not be_blank }
  end
end
