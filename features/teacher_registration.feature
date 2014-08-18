Feature: Teacher Registration
	
	To register in application teacher goes to register form, 
	which consists only name, qualification, experience,
	email, password and confirm password fields and a Submit button. 
	After registration teacher is logged in and ready to work with application.

	Scenario: Teacher registers successfully via register form
		Given I am a guest
		When I fill the teacher register form with valid data
		Then I should be registered teacher in application		
		And I should receive "Teacher was successfully created." for teacher registration