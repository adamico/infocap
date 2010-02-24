When(/^I submit$/) do
  steps %Q{
    When I press "Submit"
  }
end

Then(/^I should not have infos$/) do
  Info.count.should == 0
end

Then(/^I should see details table$/) do |expected_table|
  expected_table.diff!(tableish('table#info_details tr', 'td,th'))
end
