# spec/models/Appointment_spec.rb
require 'rails_helper'

# Test suite for the Appointment model
RSpec.describe Appointment, type: :model do
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:checkup) }
  it { should validate_presence_of(:scheduledate) }
end