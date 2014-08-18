Feature: Teacher Read Update Delete Actions
	
	Teacher must login to the application to read teacher list,delete a teacher and update a teacher.
	
	Scenario: Teacher login to show read teachers list
		Given I am a "example@example.com" teacher
		When I go to teachers url
		Then I should see teachers table
	
	Scenario: Teacher login to show details of a particular teacher
		Given I am a "example@example.com" teacher
		When I go to teachers url
		And I click on teacher "Show" show
		Then I should see teacher details
	
	Scenario: Teacher login to edit existing teacher
		Given I am a "example@example.com" teacher
		When I go to "example@example.com" teacher edit page
		And I change experience to "5 Years"
		Then I should receive "Teacher was successfully updated."
		
	Scenario: Teacher login to delete teacher
		Given I am a "example@example.com" teacher
		When I go to teachers url
		And I click on "Destroy" destroy
		Then "example@example.com" should not exist in database