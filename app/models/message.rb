class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :rut, :content

  validates :rut,
    presence: true

  validates :content,
    presence: true

end