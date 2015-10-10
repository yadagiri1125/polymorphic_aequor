class Person < ActiveRecord::Base
   has_many :interactions, as: :interactive
   has_many :segments
end
