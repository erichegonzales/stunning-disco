class Role < ActiveRecord::Base
    belongs_to :actor
    belongs_to :movie

    def credit
        "#{self.character_name}: Played by #{actor.name}"
    end
end