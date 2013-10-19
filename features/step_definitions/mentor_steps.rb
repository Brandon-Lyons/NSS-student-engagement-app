Given /^a mentor exists with email: "([^"]*)"$/ do |email|
  FactoryGirl.create(:mentor, email: email)
end

Given /^a mentor exists with name: "([^"]*)" and email: "([^"]*)"$/ do |name, email|
  FactoryGirl.create(:mentor, name: name, email: email)
end

Given /^a mentor exists$/ do
  FactoryGirl.create(:mentor)
end