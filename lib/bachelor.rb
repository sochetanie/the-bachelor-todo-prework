def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |x|
    if x['status'] == 'Winner'
      return x['name'].split(' ').first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
    value.each do |x|
    if x['occupation'] == occupation
      return x['name']
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key, value|
    value.each do |x|
      if x['hometown'] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |x|
    if x['hometown'] == hometown
      return x['occupation']
    end
  end
end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  num_of_ppl = 0
  data[season].each do |x|
    sum += x['age'].to_i
    num_of_ppl += 1
  end
  (sum / num_of_ppl.to_f).round
end
