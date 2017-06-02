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


  describe  'GET #show' do

    let(:request) { get :show, { id: @country_1 } }
    before :each do  #'add data in table'
      @country_1 = FactoryGirl.create(:country)
    end

    context 'have data' do
      it 'check find data' do
        request
        expect(assigns[:country]).to eq @country_1
      end
    end

    context 'show data' do
      it 'show data template' do
        request
        expect(response).to render_template :show
      end
    end

  end

end
