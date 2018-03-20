Feature: Practera Login
Scenario: Login to sandbox
  Given I open https://sandbox.practera.com url
  When I click login button
  Then I input the password as 12341234
  And I input the email as rocky@intersective.com
  Then I click the login button
  Then I see the dashboard

Scenario: Login to live
  Given I open https://www.practera.com url
  When I click login button
  Then I input the password as 12341234
  And I input the email as rocky@intersective.com
  Then I click the login button
  Then I see the dashboard