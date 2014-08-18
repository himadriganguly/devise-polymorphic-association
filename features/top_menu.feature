Feature: Top menu

	On any page user of the application must see the menu with links.
	Guest user sees links to Registration form and Login
	Teacher and Student sees Logout link	
	
	Scenario: Guest user
		Given I am a guest
		When I go to home page
		Then I should see guest menu
	
	Scenario: Teacher
		Given I am a "example@example.com" teacher
		When I go to home page
		Then I should see teacher menu
		
	Scenario: Student
		Given I am a "student@example.com" student
		When I go to home page
		Then I should see student menu