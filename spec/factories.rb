Factory.define :info do |f|
  f.sequence(:name) { |n| "Info #{n}" }
  f.association :category
end

Factory.define :category do |f|
  f.sequence(:name) { |n| "Category #{n}" }
  f.association :theme
end

Factory.define :theme do |f|
  f.sequence(:name) { |n| "Theme #{n}" }
end
