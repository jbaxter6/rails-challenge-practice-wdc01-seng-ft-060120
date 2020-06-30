class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :offices
    has_many :employees
    accepts_nested_attributes_for :offices

    def building_names
        array = self.office.each{|office| office.building}.uniq
    end
    
    def get_floor(building)
        self.office.each do |office| 
            if office.building == building
                office.floor
            end
        end
    end
end
