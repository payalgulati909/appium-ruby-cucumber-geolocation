Feature: Click on Notification using proverbial_android App

Background:
  Given I try to Click on color using proverbial_android App
  Given I try to Click on Text using proverbial_android App
  Given I try to Click on toast using proverbial_android App
  Given I try to Click on Notification using proverbial_android App
  Given I try to Click on geoLocation using proverbial_android App
  Given I try to Click on speedTest using proverbial_android App
  Given I try to Click on Browser using proverbial_android App
  Given I try to Click on url using proverbial_android App

Scenario: Search for a term
  When I type in "https://www.lambdatest.com"
  Then I should see results