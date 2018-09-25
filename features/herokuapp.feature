Feature: Herokuapp website
Test the login, hovers and tables features of the website.

  Scenario: Successful login
    Given I am on the login page
      And I put in the correct username "tomsmith"
      And I put in the correct password "SuperSecretPassword!"
     When I click on the login button
     Then I see the "You logged into a secure area!" message displayed

  Scenario: Fail login due to incorrect username
    Given I am on the login page
      And I put in an incorrect username like: "nottomsmith"
      And I put in the correct password "SuperSecretPassword!"
     When I click on the login button
     Then I see the "Your username is invalid!" error message displayed

  Scenario: Fail login due to incorrect password
    Given I am on the login page
      And I put in the correct username "tomsmith"
      And I put in an incorrect password like: "notSuperSecretPassword!"
     When I click on the login button
     Then I see the "Your password is invalid!" error message displayed

  Scenario: Hover over icons When check displayed info
    Given I am on the hovers page
     When I hover over avatar 1
     Then I see "name: user1" displayed
     When I hover over avatar 2
     Then I see "name: user2" displayed
     When I hover over avatar 3
     Then I see "name: user3" displayed

  Scenario: Sort Last Name column in second table
    Given I am on the tables page
      And I see the second table
     When I sort the Last Name column in ascending order
     Then I get ascending sorted elements "Bach Conway Doe Smith"
     When I sort the Last Name column in descending order
     Then I get descending sorted elements "Smith Doe Conway Bach"
