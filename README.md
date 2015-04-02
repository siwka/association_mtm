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


Rails didn't recognize pluralization (for 'Campus' created. 'campu'). Adding code  to config/initializers/inflections.rb with proper words definition solved a problem.

Add index to association table for fast search.