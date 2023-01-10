class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :labels, :formed_in_year
  has_many :members
end
