Feature: Search for a Client
    As a website user
    I will be able to search for a client

    Scenario: Searching for a client
        Given I am on "/"
		When I fill in "home_search_input" with "tactics"
		When I press "home_go_button"
		Then I should see "tactics"

    Scenario: Click the specific client
        Given I am on "/search_results?q=tactics"
		And I wait for "5"
		When I click on text "tactics"
		Then I should see "Who Helped You?"
		
    Scenario: Select employee
        Given I am on "/portal/feedback/who_helped_you?bc=1&company=tactics&start=1"
		And I wait for "5"
		When I click on text "tactics"
		Then I should see "Who Helped You?"		