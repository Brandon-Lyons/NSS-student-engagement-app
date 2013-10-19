Given /^a instructor exists with email: "([^"]*)"$/ do |email|
  FactoryGirl.create(:instructor, email: email)
end

Given /^a instructor exists with name: "([^"]*)" and email: "([^"]*)"$/ do |name, email|
  FactoryGirl.create(:instructor, name: name, email: email)
end

Given /^a instructor exists$/ do
  FactoryGirl.create(:instructor)
end