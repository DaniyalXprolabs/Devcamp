module Placeholder
    extend ActiveSupport::Concern
    def self.image_generator(value:)
        "https://place-hold.it/#{value}"
    end

    
end