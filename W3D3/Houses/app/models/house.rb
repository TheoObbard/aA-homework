class House < ActiveRecord::Base
  # def house
  #   House.find(self.house_id)
  # end
  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end
