def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (key, value)|
    value.reduce(nil) do |memo_1, (key_1, value_1)|
      value_1.map do |el|
        if !memo[el]
          memo[el] = {:color =>[], :gender => [], :lives => []}
          memo[el][key].push(key_1.to_s)
        else 
          memo[el][key].push(key_1.to_s)
        end
      end
    end
    memo
  end
end
