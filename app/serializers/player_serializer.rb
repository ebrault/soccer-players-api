class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :position, :team
end
