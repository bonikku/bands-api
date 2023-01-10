class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_year, :instrument
end
