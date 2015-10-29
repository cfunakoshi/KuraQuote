class Piprotection < ActiveRecord::Base
  belongs_to :coverage
  belongs_to :quote
end
