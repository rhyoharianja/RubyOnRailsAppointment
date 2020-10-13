class Doctor < ApplicationRecord
    # model association
    belongs_to :hospital

    # validation
    validates_presence_of :fullname, :specialist
end
