class Cat < ApplicationRecord

   has_many :toys, as: :toyable

   def self.receive_toy(name)
     @toy = Toy.new(name, self.id)
     @toy.save
   end

end
