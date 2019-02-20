class Article < ApplicationRecord
   mount_uploader :image, ImageUploader
   validates :title, presence: true,
                    length: { minimum: 5 }
   validates :description, presence: true                 
end
