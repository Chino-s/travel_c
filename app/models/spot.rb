class Spot < ActiveRecord::Base
  attr_accessible :name, :area_id, :spot_category_id,:country_id, :tags_attributes
  attr_accessible :name, :area_id, :spot_category_id,:country_id, :is_admin, :as => :admin

  belongs_to :country
  
end
