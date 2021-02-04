class Project < ApplicationRecord
    belongs_to :user
    has_many :columns

    accepts_nested_attributes_for :columns
end
