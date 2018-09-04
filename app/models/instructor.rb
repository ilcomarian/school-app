class Instructor < ApplicationRecord
    has_many :cohorts, dependent: :destroy
    enum highest_edu: [:highschool, :college, :masters, :phd]
end
