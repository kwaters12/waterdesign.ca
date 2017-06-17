require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
    include Devise::Test::ControllerHelpers
    let(:project) { create(:project) }

    before (:each) do
        user = create(:user)
        sign_in user
    end

    before { ActionMailer::Base.deliveries = [] } #  ActionMailer::Base.deliveries.clear

    describe 'GET #index' do
        it 'is successful' do
            get :index
            expect(response).to be_success
        end
    end
end
