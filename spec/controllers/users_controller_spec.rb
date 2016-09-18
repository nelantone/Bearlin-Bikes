require 'rails_helper'

describe UsersController, :type => :controller do

  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:admin) }

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
        sign_in admin
      end

      it 'is :user NOT equal to admin' do
        get :show, params: { id: admin.id }, session: { user_id: admin.id }
        expect(assigns(:user)).not_to eq user
      end

      it 'redirects to root_path' do
        get :show, params: { id: user.id }, session: { user_id: user.id }
        expect(response).to redirect_to(root_path)
        expect(response).to have_http_status(302)
      end

    end
  end
end