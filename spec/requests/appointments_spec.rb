# spec/requests/appointments_spec.rb
require 'rails_helper'

RSpec.describe 'Appointments API', type: :request do
  # add appointments owner
  let(:user) { create(:user) }
  let!(:appointments) { create_list(:appointment, 10, created_by: user.id) }
  let(:appointment_id) { appointments.first.id }
  # authorize request
  let(:headers) { valid_headers }

  describe 'GET /appointments' do
    # update request with headers
    before { get '/appointments', params: {}, headers: headers }

    # [...]
  end

  describe 'GET /appointments/:id' do
    before { get "/appointments/#{appointment_id}", params: {}, headers: headers }
    end
  end

  describe 'POST /appointments' do
    let(:valid_attributes) do
      # send json payload
      { title: 'Learn Elm', created_by: user.id.to_s }.to_json
    end

    context 'when request is valid' do
      before { post '/appointments', params: valid_attributes, headers: headers }
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { title: nil }.to_json }
      before { post '/appointments', params: invalid_attributes, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(json['message'])
          .to match(/Validation failed: Title can't be blank/)
      end
  end

  describe 'PUT /appointments/:id' do
    let(:valid_attributes) { { title: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put "/appointments/#{appointment_id}", params: valid_attributes, headers: headers }
      # [...]
    end
  end

  describe 'DELETE /appointments/:id' do
    before { delete "/appointments/#{appointment_id}", params: {}, headers: headers }
    # [...]
  end
end