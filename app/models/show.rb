class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        Character.where(show_id: self.id).map do |char|
            Actor.find(char.actor_id).full_name
        end
    end



end