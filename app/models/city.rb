class City < ActiveRecord::Base
  attr_accessible :name, :area_id, :city_ranking, :imagephoto, :country_id, :tags_attributes
  attr_accessible :name, :area_id, :city_ranking, :imagephoto, :country_id, :is_admin, :as => :admin

  belongs_to :country

end
