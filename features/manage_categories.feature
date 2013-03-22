Feature: Manage Categories
  As a blog adminstrator
  In order to organize blog contents
  I want to add and edit blogging categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Enter new category page
    When I follow "Categories"
    Then I should be on the new category page
