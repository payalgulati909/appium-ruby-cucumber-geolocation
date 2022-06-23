When /^I try to Click on color using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "color").displayed?}
  $driver.find_element(:accessibility_id, "color").click
end
When /^I try to Click on Text using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "Text").displayed?}
  $driver.find_element(:accessibility_id, "Text").click
end
When /^I try to Click on toast using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "toast").displayed?}
  $driver.find_element(:accessibility_id, "toast").click
end
When /^I try to Click on Notification using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "notification").displayed?}
  $driver.find_element(:accessibility_id, "notification").click
  sleep 5
end
When /^I try to Click on geoLocation using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "geoLocation").displayed?}
  $driver.find_element(:accessibility_id, "geoLocation").click
  sleep 5
  $driver.back
end
When /^I try to Click on speedTest using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "speedTest").displayed?}
  $driver.find_element(:accessibility_id, "speedTest").click
  sleep 5
  $driver.back
end
When /^I try to Click on Browser using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "Browser").displayed?}
  $driver.find_element(:accessibility_id, "Browser").click
end
When /^I try to Click on url using proverbial_ios App/ do
  $wait.until {$driver.find_element(:accessibility_id, "url").displayed?}
  $driver.find_element(:accessibility_id, "url").click
end
When("I type in {string}") do |search_keyword|
  $wait.until { $driver.find_element(:accessibility_id, "url").displayed? }
  search_box = $driver.find_element(:accessibility_id, "url")
  search_box.send_key(search_keyword)
  $wait.until {$driver.find_element(:accessibility_id, "find").displayed?}
  $driver.find_element(:accessibility_id, "find").click
  sleep 5
end

 