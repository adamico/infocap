When(/^I submit$/) do
  steps %Q{
    When I press "Submit"
  }
end

Then(/^I should have (\d+) info$/) do |count|
  Info.all.count.should == count.to_i
end

Then(/^I should not have infos$/) do
  Info.all.count.should == 0
end
