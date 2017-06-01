require 'rails_helper'

RSpec.describe CountriesController, :type => :controller do

    describe "GET 'show'" do
      it "should returns http success" do
        get 'show'
        response.should be_success
      end

      it "should assigns @id" do
        get 'show'
        assigns[:id].should_not be_nil
      end

    end

end
