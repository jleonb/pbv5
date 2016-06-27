class Institucion < ActiveRecord::Base
  has_many :users
  has_many :premia
end
