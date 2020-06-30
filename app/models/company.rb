class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :office
    has_many :employees
end
