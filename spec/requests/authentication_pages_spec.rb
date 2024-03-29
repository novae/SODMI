require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }
    describe "with invalid information" do
      before { click_button "Entrar" }
      it { should have_selector('title', text: 'Entrar') }

      it { should have_selector('h3',    text: 'Iniciar Sesion') }

      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
      
      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end
  end
end