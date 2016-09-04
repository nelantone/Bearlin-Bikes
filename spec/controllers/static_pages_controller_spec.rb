require 'rails_helper'

describe StaticPagesController, :type => :controller do
  context 'POST #thank_you' do
    before do
      get :thank_you
    end

    xit 'responds successfully with an HTTP 200 status code' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    xit 'renders the thank_you template' do
      expect(response).to render_template('thank_you')
    end
  end

end