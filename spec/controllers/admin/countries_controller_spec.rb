require 'rails_helper'

RSpec.describe Admin::CountriesController, :type => :controller do

  describe  'GET #index' do

    it 'response render :index' do
      get :index
      expect(response).to render_template :index
    end

    context 'have data' do
      before :each do
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
    before :each do #'add data in table'
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


  describe  'GET #new' do

    it 'response render :new' do
      get :new
      expect(response).to render_template :new
    end
  end


  describe  'POST #create' do

    let(:request) { post :create }
    let(:country_params) { { name: @country1.name, language: @country1.language, capital: @country1.capital, area_id: @country1.area_id }}
    before :each do
      @country1 = FactoryGirl.build(:country)
    end

    context 'have data' do
      it 'create a new country' do
        expect do
          post :create, country: country_params
        end.to change(Country, :count).by(1)
      end

      it 'redirect to #show' do
        post :create, country: country_params
        expect(response).to redirect_to admin_country_path(Country.last)
      end

      it 'when successfully create, show notice' do
        post :create, country: country_params
        expect(flash[:notice]).to eq 'Country was successfully created.'
        expect(flash[:notice]).not_to be_empty
      end

    end

  end


  describe  'GET #edit' do

    before :each do #'add data in table'
      @country1 = FactoryGirl.create(:country)
    end

    it 'response render :edit' do
      get :edit, id: @country1.id
      expect(response).to render_template :edit
    end

    it 'data match edited data' do
      get :edit, id: @country1.id
      expect(assigns[:country]).to eq @country1
    end

  end


  describe  'PUT #update' do

    before :each do
      @country = FactoryGirl.create(:country)
    end

    context 'correct data' do
    let(:params) { { id: @country.id, country: country_info} }
    let(:country_info) { { name: 'aaaaa', capital: 'bbbbb'  } }

      it 'update country data' do
        put :update, params
        @country.reload
        expect(@country.name).to eq "aaaaa"
        expect(@country.capital).to eq "bbbbb"
      end

      it 'display notice' do
        put :update, params
        expect(flash[:notice]).to eq 'Country was successfully updated.'
        expect(flash[:notice]).not_to be_empty
      end
    end

  end


  describe  'DELETE #destroy' do

    before :each do
      @country = FactoryGirl.create(:country)
    end

    it 'destroy a country' do
      expect do
        delete :destroy, id: @country.id
      end.to change(Country, :count).by(-1)
    end

    it 'display notice' do
      delete :destroy, id: @country.id
      expect(flash[:notice]).to eq 'Country deleted.'
      expect(flash[:notice]).not_to be_empty
    end

  end

end
