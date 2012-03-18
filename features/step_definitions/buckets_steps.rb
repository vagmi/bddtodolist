Given /^there is a bucket called "([^"]*)"$/ do |bucket_name|
  Bucket.create(:name=>bucket_name)
end

When /^I visit the buckets page$/ do
  visit buckets_path
end

Then /^I should see bucket "([^"]*)"$/ do |bucket_name|
  page.should have_content(bucket_name)
end

When /^I click on "([^"]*)"$/ do |selector|
  click_link(selector) 
end

Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content(message)
end


