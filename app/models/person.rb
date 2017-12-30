  class Person < ApplicationRecord
    has_attached_file :image

    # validates :lat, presence: true
    # validates :lng, presence: true

    validates :name, presence: true
    validates :bio, presence: true
    validates_attachment :image,
      content_type: {
        content_type: ["image/jpeg", "image/gif", "image/png"]
      }


    def as_json
      {
        id: id,
        name: name,
        bio: bio,
        bioVisible: true,
        image: image,
        lat: lat,
        lng: lng
      }
    end
  end

