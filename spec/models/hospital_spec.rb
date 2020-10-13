# spec/models/hospital_spec.rb
require 'rails_helper'

# Test suite for the Hospital model
RSpec.describe Hospital, type: :model do
  # Association test
  # ensure Hospital model has a 1:m relationship with the Item model
  it { should have_many(:doctors).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
end
