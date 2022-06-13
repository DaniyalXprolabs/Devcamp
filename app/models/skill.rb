class Skill < ApplicationRecord
    include Placeholder

    validates_presence_of :title, :percent_utilized

    before_initialize: set_defaults

    def set_defaults
        self.badge||=Placeholder.image_generator(value: '250')
        #self.badge ||="https://place-hold.it/250"
    end
end
