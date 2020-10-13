class Hospital < ApplicationRecord
    # model association
    has_many :doctors, dependent: :destroy

    # validations
    validates_presence_of :name, :address
end
