Given(/^I am on the "(.*?)" homepage$/) do  |url|
  visit 'http://stackoverflow.com/'
end

Then(/^I will search for "(.*?)"$/) do |searchString|
  find(:xpath, "//form[@id='search']/input[@name='q']").set searchString
  find(:xpath, "//form[@id='search']/input[@name='q']").native.send_keys(:enter)
end

Then(/^I should see "(.*?)"$/) do |searchString|
  expect(find(:xpath, "//form[@id='bigsearch']/table/tbody/tr/td/input[@name='q']").value).to eq searchString
end