list = ["name1", "name2", "name3","name4", "name5"]
new_list = []

  # list.each do |i|
  #   if i == "name3"
  #     new_list << i
  #   p new_list
  #   end
  # end

  new_list = list.select("name3")
p new_list
