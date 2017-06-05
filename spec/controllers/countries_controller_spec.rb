require 'rails_helper'

RSpec.describe CountriesController, :type => :controller do

  describe  'GET #index' do

    it 'response render :index' do
      get :index
      expect(response).to render_template :index
    end

    context 'have data' do
      before :each do  #'add data in table'
        @country1 = FactoryGirl.create(:country)
        @country2 = FactoryGirl.create(:country)
      end
      it 'check order data' do
        get :index
        expect(assigns[:countries]).to eq [@country1, @country2]
      end
    end

    context 'no have data' do
      it 'countries is empty array' do
        get :index
        expect(assigns[:countries]).to eq ([])
      end
    end

  end


  describe  'GET #show' do

    let(:request) { get :show, { id: @country1 } }
    before :each do  #'add data in table'
      @country1 = FactoryGirl.create(:country)
    end

    it 'response render :show' do
      request
      expect(response).to render_template :show
    end

    it 'check find data' do
      request
      expect(assigns[:country]).to eq @country1
    end

  end


  describe  'GET #search' do

    before :each do  #'add data in table'
      @country1 = FactoryGirl.create(:country, name: "abc")
      @country2 = FactoryGirl.create(:country)
    end

    it 'response render :index' do
      get :search, q: @country1.name
      expect(response).to render_template :index
    end

    it 'when no params[:q], assigns[:countries] is all country' do
      get :search
      expect(assigns[:countries]).to eq [@country1, @country2]
    end

    it 'when have params[:q], assigns[:countries] search country' do
      get :search, q: @country1.name
      expect(assigns[:countries]).to eq [@country1]
      expect(assigns[:countries].first.name).to eq @country1.name
    end

  end

end
