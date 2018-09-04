class Instructor < ApplicationRecord
    has_many :cohorts
    enum highest_edu: [:highschool, :college, :masters, :phd]
end
