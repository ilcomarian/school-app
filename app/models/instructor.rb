class Instructor < ApplicationRecord
    has_many :cohort
    enum highest_edu: [:highschool, :college, :masters, :phd]
end
