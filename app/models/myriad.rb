class Myriad < ActiveRecord::Base
  validates :name,
            presence: true,
            length: {in: 3..35}
end
