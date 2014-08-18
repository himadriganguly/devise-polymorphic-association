Feature: Student Registration
	
	To register in application student goes to register form, 
	which consists only from email, password and confirm password firlds and a button. 
	After registration reader is logged in and ready to work with application.

	Scenario: Teacher registers successfully via register form
		Given I am a guest
		When I fill the student register form with valid data
		Then I should be registered student in application		
		And I should receive "Student was successfully created." for student registration