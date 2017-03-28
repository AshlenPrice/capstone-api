class KitchenSerializer < ActiveModel::Serializer
  attributes :id, :kitchen_name, :location, :phone_number, :email, :available_hours, :freezer, :ovens, :refrigirator, :food_prep_counter, :slicers, :mixers, :food_processors, :ranges, :sinks, :shelving, :storage, :safety_equipment
  has_one :profile
end
