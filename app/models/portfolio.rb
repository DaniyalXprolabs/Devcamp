class Portfolio < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :body,:main_image,:thumb_image

    def self.angular
        where(subtitle:'Angular')
    end

    scope :software_engineering, ->{where(subtitle:'Software Engineering')}
    after_initialize :set_defaults

    def set_defaults
        self.main_image ||=Placeholder.image_generator(value: '300')
        self.thumb_image ||=Placeholder.image_generator(value: '300')
    end
end
