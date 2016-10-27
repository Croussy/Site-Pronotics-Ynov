class Championnat < ApplicationRecord
  has_many :matches

  def self.count_matches
    toReturn = []
    Championnat.all.each do | championnat |
      toReturn.push([championnat.name, championnat.matches.count])
    end
    return toReturn
  end
end
