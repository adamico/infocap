When(/^I submit$/) do
  steps %Q{
    When I press "Submit"
  }
end

Then(/^I should not have infos$/) do
  Info.count.should == 0
end
