When /^I click "([^"]*)"$/ do |text|
  find(:rel, text).click
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should be notified that "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should have_no_content(text)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^"]*)"$/ do |text|
  click_button(text)
end

When /^I check "([^"]*)"$/ do |field|
  check(field)
end

When /^show me the page$/ do
  save_and_open_page
end

When /^I choose "([^"]*)"$/ do |field|
  choose(field)
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

Then /^I should see the link "([^"]*)"$/ do |url|
  page.body.should =~ /#{url}/
end

Then /^I should not see the link "([^"]*)"$/ do |url|
  page.body.should_not =~ /#{url}/
end