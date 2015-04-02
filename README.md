QUESTION 2
Create a Many-to-Many relationship
Create two models connected by a many-to-many relationship using has_many through

Model 1: Campus
 - city
 - state
 - name

Model 2: Student
 - first name
 - last name

Bearing in mind that a student can belong to more than one campus, set up their relationship with an 
additional field denoting if a particular campus is their primary campus.

solution note:

Rails didn't recognize pluralization (for 'Campus' created. 'campu'). Adding code  to config/initializers/inflections.rb with proper words definition solved a problem.

Add index to association table for fast search.


QUESTION 4

Manipulating API Data

Fetch the JSON data from the file student_data.json then sort the results by 
each entries "grade" attribute, ascending order of college completion.

solution note:

Data retrieved from json file is not read to db. Two questions are considered as a separate problems.
