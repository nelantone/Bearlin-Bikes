require 'rails_helper'

describe UsersController, :type => :controller do

  let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }
  let(:second_user) { User.create!(email:"second_usr@example.com", password:"123456") }

  describe 'GET #show' do
    context 'User is logged in' do

       before do
         sign_in user
       end

      it 'loads correct user details' do
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'is :user equal to the created user' do
        get :show, params: { id: user.id }, session: { user_id: user.id }
        expect(assigns(:user)).to eq user
      end
    end

    context 'No user is logged in' do
      it 'redirects to root_path' do
        get :show, params: { id: user.id }, session: { user_id: user.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context ':second user logged can\'t access :user show page and it\'s root redirected ' do
      before do
        sign_in second_user
      end

      it 'is :user NOT equal to second_user' do
        get :show, params: { id: second_user.id }, session: { user_id: second_user.id }
        expect(assigns(:user)).not_to eq user
      end

      it 'redirects to root_path' do
        get :show, params: { id: user.id }, session: { user_id: user.id }
        expect(response).to redirect_to(root_path)
      end

    end
  end
end