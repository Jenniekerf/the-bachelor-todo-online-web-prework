






















def get_first_name_of_season_winner(data, season)
  data[season].each {|contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split.first
   end
  }
end

def get_contestant_name(data, occupation)
  data.each {|season, contestants|
    contestants.each {|contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    }
  }
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each {|season, contestants|
    contestants.each {|contestant_hash|
     if contestant_hash["hometown"] == hometown
       counter += 1
     end
    }
  }
counter
end


def get_occupation(data, hometown)
  data.each {|season, contestants|
    contestants.each {|contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    }
  }
end



def get_average_age_for_season(data, season)
  age = 0
  count= 0
  data[season].each do |array|
        count += 1
        age += array["age"].to_f
  end
  (age/count).round
end

