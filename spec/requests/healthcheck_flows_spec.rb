require 'rails_helper'

RSpec.describe 'HealthcheckFlows', type: :request do
  describe 'GET /healthcheck' do
    it 'can access url without being authorized' do
      get healthcheck_flows_path
      expect(response).to have_http_status(200)
    end
  end
end
