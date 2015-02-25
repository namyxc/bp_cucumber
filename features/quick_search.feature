Feature: Stackoverflow search box
 
Scenario: Search for cucumber       
 
 Given I am on the "stackoverflow" homepage
 Then I will search for "cucumber"
 Then I should see "cucumber"