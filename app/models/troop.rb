class Troop < ActiveRecord::Base
   has_many :troop_events
   has_many :adults
   has_many :events, through: :troop_events
   has_many :scouts

   has_many :photos, as: :photoable

    def on_page_photos
        photos.where("on_page = \"true\" ")
    end
end
