class Match < ApplicationRecord
  belongs_to :championnat


  def self.findInList(list, toFind)
    list.each do |array|
      if array.include?toFind
        return true
      end
    end
    return false
  end

  def self.addScore(list, toFind, score)
    list.each do |array|
      if array.include?toFind
        array[1] += score
      end
    end
    return nil
  end



  def self.sum_goal
    toReturn = []
    Match.all.each do | match |
      # get goal for home team
      if self.findInList(toReturn, match.home_team)
        self.addScore(toReturn, match.home_team, match.home_score)
      else
        toReturn.push([match.home_team, match.home_score])
      end

      # get goal for Away team
      if self.findInList(toReturn, match.away_team)
        self.addScore(toReturn, match.away_team, match.away_score)
      else
        toReturn.push([match.away_team, match.away_score])
      end

    end
    return toReturn
  end
end
