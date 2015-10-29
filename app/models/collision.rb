class Collision < ActiveRecord::Base
  belongs_to :coverage
  belongs_to :quote
end
