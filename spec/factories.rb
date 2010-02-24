Factory.define(:info) do |f|
  f.sequence(:name) { |n| "Info #{n}" }
  f.phone_numbers { |phone_numbers| [phone_numbers.association(:phone_number)]}
end

Factory.define(:phone_number) do |f|
  f.thenumber 303030
end

