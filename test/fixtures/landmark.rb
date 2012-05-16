class Landmark < ActiveRecord::Base
  acts_as_versioned_rails3 :if_changed => [ :name, :longitude, :latitude ]
end
