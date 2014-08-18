# Polymorphic Association using Devise

This is just a demo project to show the Polymorphic Association using Devise. In this project there are two models Teacher and Student, both have two seperate registration page but one single Login page 

## Features

* Polymorphic Association using Devise
* Two Registration page and Single Login page
* The RSpec is used for Unit Testing and Cucumber for Integration Testing

## Drawbacks 

The drawback of this project is that after we login in as teacher and go to edit a teacher then we have to provide the password in the passsword field to update teacher details, teacher details cannot be update with blank password field. Same for student.

## Requirements

1. Ruby version **2.0**
2. Ruby on Rails version **4.0**

## Installation

1. Download the zipfile of the application and extract
2. Open the terminal and move to the folder where the extraction takes place
3. run the command `rake db:setup`
4. lastly run `rails server`
5. Open your browser and type `localhost:3000` to enjoy the application

## CONTRIBUTE

The project can be successful if more people contribute to this project. Or if have any idea you want to implement or think that there is a better way to implement any part of the code please create a pull request and I will do my best to merge appropriately.