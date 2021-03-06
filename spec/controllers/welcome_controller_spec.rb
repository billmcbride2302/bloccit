require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET about" do
     it "renders the about template" do
       get :about
       expect(response).to render_template("about")
     end
   end  

   describe "GET faq" do 
   	it "renders the faq template" do 
   	  get :faq 
   	  expect(response).to render_template("faq")
   	 end
    end

end
