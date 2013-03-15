Feature: Merge articles
  As a blog administrator
  In order to group articles on the same topic
  I want to be able to merge 2 articles

  Background: articles have been added to the blog
    Given the blog is set up
    And the following articles exist:
    | title       | body                                 | user_id |
    | SaaS Course | SaaS Course CS169.2x started         | 2       |
    | SaaS II     | First homework for SaaS II published | 1       |
    And I am on the edit page for article "SaaS Course"

  Scenario: A non-admin cannot merge two articles
    Given I am not logged in as an administrator
    And I am on the edit page for article "SaaS Course"
    #And show me the page
    Then I should not see "Merge"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    And I am on the edit page for article "SaaS Course"
    Then I should see "Merge"
    When I fill in "merge_with" using "SaaS II"'s id
    #And show me the page
    And I press "Merge"
    #??? Then I should be on the edit page for article "SaaS Course"
    And I should see "SaaS Course CS169.2x started"
    And I should see "First homework for SaaS II published"
