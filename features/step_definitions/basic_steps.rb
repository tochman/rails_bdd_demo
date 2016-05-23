Given(/^there's a post titled "([^"]*)" with "([^"]*)" content$/) do |title, content|
  FactoryGirl.create(:post, title: title, content: content)
end

When(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see the "([^"]*)" post$/) do |title|
  post = Post.find_by_title(title)
  expect(page).to have_content(post.title)
  expect(page).to have_content(post.content)
end
