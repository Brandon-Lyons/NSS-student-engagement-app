Given /^a student exists with email: "([^"]*)"$/ do |email|
  FactoryGirl.create(:student, email: email)
end

Given /^a student exists with name: "([^"]*)" and email: "([^"]*)"$/ do |name, email|
  FactoryGirl.create(:student, name: name, email: email)
end

Given /^a student exists$/ do
  FactoryGirl.create(:student)
end