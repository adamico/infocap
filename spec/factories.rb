Factory.define(:info) do |f|
  f.sequence(:name) { |n| "Info #{n}" }
end

