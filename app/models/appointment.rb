class Appointment < ApplicationRecord
    # validations
    validates_presence_of :checkup, :scheduledate
end
