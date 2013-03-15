Given /the following articles exist/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
end

When /^I fill in "([^"]*)" using "([^"]*)"'s id$/ do |field, title|
  fill_in(field, :with => Article.find_by_title(title).id)
end

