module Username
    extend ActiveSupport::Concern
    def first_name
        self.Name.split.first
    end
end