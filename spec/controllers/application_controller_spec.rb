require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  render_views
  describe 'get hello' do

    it "redirects to login page if not logged in" do
      get :hello
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

  end
end
