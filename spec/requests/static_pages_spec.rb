require 'spec_helper'

describe "StaticPages" do
  subject { page }
  describe "Home Page" do
    
    before { visit root_path } 
    it { should have_content('Inicio') }
    it { should have_selector('title',
                        text: "SODMI | Inicio") }  
    it { should_not have_selector('title', text: '| Home') }
  end
  
  describe "Lumin Page" do
    before {visit lumin_path}
    
    it { should have_content('Lumin') }
    it {should have_selector('title', text: "SODMI | Lumin") }  
  end
  
  describe "About Page" do
    before {visit about_path}
    
    it { should have_content('Nosotros') }
    it { should have_selector('title', text: "SODMI | Nosotros") }
  end
  
  
  describe "Contact Page" do
    before { visit contact_path }
    it { should have_content('Contactanos') } 
    it { should have_selector('title', text: "SODMI | Contacto") }
  end
  
  describe "Lecciones Page" do
    before { visit lecciones_path  }
    it { should have_content('Unidades') }
    it { should have_selector('title', text: "SODMI | Lecciones") }
   
  end
  
  describe "IngresoAlumno Page" do
    before { visit ingresoalumno_path  }
    it { should have_content('Ingreso de Alumno') }
    it { should have_selector('title', text: "SODMI | Ingreso Alumno") }
   
  end
  
end
