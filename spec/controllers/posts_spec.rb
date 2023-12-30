require 'rails_helper'
RSpec.describe PostsController, type: :controller do
  let(:post1) { FactoryBot.create(:post) }
  let(:valid_attributes) { attributes_for(:post) }


  describe 'GET #index' do
    it 'returns a successful response' do    
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'return  a successful response' do 
      get :show ,params: { id: post1.id }
      expect(response).to be_successful
    end
  end
  describe 'Get #new' do
   it 'return a successful response' do
    get :new 
    expect(response).to be_successful
   end
  end

  describe 'Post #create' do
    it 'return a successful response' do
     post :create, params: { post: valid_attributes }
     expect(response).to have_http_status(:created)
   end
  end
end