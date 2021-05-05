Feature: Google can search

Background:
	Given I am on Flipkart
	And I close the login popup

Scenario: Search for a term
	When I fill in "q" found by "name" with "samsung mobiles"
	And I search
	Then I should see results with photo with word "SAMSUNG"