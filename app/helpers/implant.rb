
def get_synergies(chosen_vegetables, garden_length)
  number_of_implants = get_number_of_implants(garden_length)
  implantation = []
  chosen_vegetables.each_with_index do |vegetable, n|
    implantation[n] = []
    implantation[n][0] = vegetable
    i = 0
    while (i < number_of_implants - 1) do
      suitable_vegetables = get_list_of_synergies(vegetable)
      implantation[n][i + 1] = suitable_vegetables[i]
      i += 1
    end
  end
  implantation
end

def get_number_of_implants(garden_length)
  min_length = 3
  garden_length > min_length ? 3 : 2
end

def get_list_of_synergies(vegetable_name)
  result = []
  vegetable_id = Vegetable.find_by(name: vegetable_name)
  return if vegetable_id.nil?

  Synergy.for_vegetable(vegetable_id).each do |synergy|
    first_vege = synergy.first_vegetable.name
    second_vege = synergy.second_vegetable.name
    first_vege == vegetable_name ? result.append(second_vege) : result.append(first_vege)
  end
  result.shuffle
end
