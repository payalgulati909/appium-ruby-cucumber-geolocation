When /^I try to Click on color using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/color").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/color").click
end

When /^I try to Click on Text using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/Text").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/Text").click
end

When /^I try to Click on toast using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/toast").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/toast").click
end

When /^I try to Click on Notification using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/notification").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/notification").click
  sleep 5
end

When /^I try to Click on geoLocation using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/geoLocation").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/geoLocation").click
  sleep 5
  $driver.back
end

When /^I try to Click on speedTest using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/speedTest").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/speedTest").click
  sleep 5
  $driver.back
end

When /^I try to Click on Browser using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/Browser").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/Browser").click
end

When /^I try to Click on url using proverbial_android App/ do
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/url").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/url").click
end

When("I type in {string}") do |search_keyword|
  $wait.until { $driver.find_element(:id, "com.lambdatest.proverbial:id/url").displayed? }
  search_box = $driver.find_element(:id, "com.lambdatest.proverbial:id/url")
  search_box.send_key(search_keyword)
  $wait.until {$driver.find_element(:id, "com.lambdatest.proverbial:id/find").displayed?}
  $driver.find_element(:id, "com.lambdatest.proverbial:id/find").click
  sleep 5
end

Then /^I should see results$/ do
  $driver.find_elements(:class, "android.widget.TextView").size.should > 0
end




