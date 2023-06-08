def get_quantity(vegetable_name, implant_area)
  vegetable = Vegetable.find_by(name: vegetable_name)
  return if vegetable.nil?

  footprint = vegetable.footprint
  (implant_area / footprint).truncate
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
      imp_with_qty[c][i] = { vegetable:, qty: }
    end
  end
  imp_with_qty
end
