# spec/models/doctor_spec.rb
require 'rails_helper'

# Test suite for the Doctor model
RSpec.describe Doctor, type: :model do
  # Association test
  # ensure an doctor record belongs to a single hospital record
  it { should belong_to(:hospital) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:fullname) }
  it { should validate_presence_of(:specialist) }
end