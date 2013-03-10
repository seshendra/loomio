Feature: Loomio provides proper meta-data for social websites
  So that I can link Loomio pages and engage more users
  I want pages like FB to preview data relevant to the page linked

  Scenario: A signed in user accesses meta-data of public group
    Given there is a discussion in a public group
    When I visit the group page
    Then social meta-data about the group should be present

  Scenario: A signed in user accesses meta-data of public discussion
    Given there is a discussion in a public group
    When I visit the discussion page
    Then social meta-data about the discussion should be present

  Scenario: A signed in user accesses meta-data of a private group
    Given I am logged in
    And there is a discussion in a private group
    When I visit the group page
    Then social meta-data about the group should not be present

  Scenario: A signed in user accesses meta-data of a private discussion
    Given I am logged in
    And there is a discussion in a private group
    When I visit the discussion page
    Then social meta-data about the discussion should not be present

  Scenario: A logged out user accesses facebook admin id meta-data from a page
    Given there is a discussion in a private group
    When I visit the discussion page
    Then facebook meta-data should be present
