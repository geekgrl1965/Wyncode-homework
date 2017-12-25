# names = ['romeo', 'oedipus', 'hansel', 'gretel']
# names = capitalize_each(names)
# p names
# => ['Romeo', 'Oedipus', 'Hansel', 'Gretel']



def capitalize_each(names)
  names.map do |character|
     character.capitalize
  end
end

p capitalize_each(['romeo', 'oedipus', 'hansel', 'gretel'])
