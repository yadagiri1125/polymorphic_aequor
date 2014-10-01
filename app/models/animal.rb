class Animal < ActiveRecord::Base
belongs_to :tribe 
self.inheritance_column = :race 
scope :lions, -> { where(race: 'Lion') } 
scope :meerkats, -> { where(race: 'Meerkat') } 
scope :wild_boars, -> { where(race: 'WildBoar') }
scope :races, -> { all.map(&:race).compact }

def talk 
    raise 'Abstract Method' 
end

end
