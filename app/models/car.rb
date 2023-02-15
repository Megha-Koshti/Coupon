class Car < ApplicationRecord
   has_and_belongs_to_many :parts

   # to attach image
   has_one_attached :car_file
end
