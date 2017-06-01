require 'rails_helper'

RSpec.describe CountriesController, :type => :controller do

  describe  'GET #index' do

    it 'show view' do
      get :index
      expect(response).to render_template(:index)
    end

    context 'have data' do
      before :each do  #'add data in table'
        @countries1 = FactoryGirl.create(:country)
        @countries2 = FactoryGirl.create(:country)
      end
        it 'check order data' do
          get :index
          expect(assigns[:countries]).to eq([@countries1, @countries2])
        end
    end

    context 'no have data' do
      it 'countries is empty array' do
        get :index
        expect(assigns[:countries]).to eq([])
      end
    end

  end

end
