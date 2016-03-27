def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, characteristics|

    characteristics.each do |characteristic, birds_arrays|
      birds_arrays.each do |pigeon|
        if !pigeon_list.key?(pigeon) 
            pigeon_list[pigeon] = {}
        end
        if !pigeon_list[pigeon].key?(attribute)
            pigeon_list[pigeon][attribute] = []
        end
        if data[attribute][characteristic].include?(pigeon) && !pigeon_list[pigeon][attribute].include?(characteristic)
          pigeon_list[pigeon][attribute] << characteristic.to_s
        end
      end
    end
  end
  pigeon_list
end