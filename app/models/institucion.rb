class Institucion < ActiveRecord::Base
  has_many :users
  has_many :slider_tops
end
