Then(/^I should not have (\w+)$/) do |plural_model|
  steps %Q{
    Then 0 #{plural_model} should exist
  }
end
