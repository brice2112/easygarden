COMP_W = 0.5

def validate_garden(garden, implantations)
  imp_with_qty = assign_quantities(implantations, garden.length, COMP_W)
  garden.compartments.each_with_index do |comp, c|
    i = 0
    until i == imp_with_qty[0].count
      comp.implantations.new(
        vegetable: Vegetable.find_by(name: imp_with_qty[c][i][:name]),
        quantity: imp_with_qty[c][i][:qty]
      )
      comp.save
      i += 1
    end
  end
end

def assign_quantities(implantations, garden_length, comp_width)
  imp_with_qty = []
  number_of_implants = implantations[0].count

  implantations.each_with_index do |compartment, c|
    imp_with_qty[c] = []
    compartment.each_with_index do |vegetable, i|
      implant_length = garden_length / number_of_implants
      implant_area = implant_length * comp_width
      qty = get_quantity(vegetable, implant_area)
      imp_with_qty[c][i] = { name: vegetable, qty: }
    end
  end
  imp_with_qty
end

def get_quantity(vegetable_name, implant_area)
  vegetable = Vegetable.find_by(name: vegetable_name)
  return if vegetable.nil?

  footprint = vegetable.footprint
  (implant_area / footprint).truncate
end
