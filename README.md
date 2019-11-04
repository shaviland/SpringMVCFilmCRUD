## Spring MVC Film C.R.U.D. Project
###Week 8 Homework

###Overview
A user can enter a Film's ID and see the details of the film in a web page. If the film is not found, they see a message stating that the film is not found. A user can choose to add a new film. They can enter all the properties of the film. Their input will be used to create Film object, which the DAO implementation will save in the database. If the insert fails, the film not added page displays.
A user can enter a Film's ID and see the details of the film in a web page. When a user retrieves a film, they have the option of deleting it. If they delete the film, it is removed from the database. If the delete fails, the page stating that the film is not deleted displays. They are also given the option of editing it. If they choose this, all the film's current properties are displayed in a form, allowing them to change any property except the film's ID. When they submit the form, that film's record is updated in the database and a page with the film's new details are shown. If the update fails, the user is informed of this.
A user can search for films by keyword/pattern in title or description. User is then presented either with a list of films or an error screen stating that there is no film found. The resulting list displays the film's title, ID, and description. The user can then input a film ID and see all the details for the film. They also have the option to update or delete the film. If the update or delete fails, they are brought to the not update or not deleted screens.
 A user can enter an actor's ID and see the details of the actor in a web page. If the actor is not found, they see a message stating that the actor is not found. A user can choose to add , update or delete an actor. They can enter all the properties of the actor. Their input will be used to create an Actor object, which the DAO implementation will save in the database. If the insert fails, the actor not added page displays.

###Technologies/ Topics Applied
* MySQL database to handle the list of films and actors
* Full C.R.U.D. on the film and actor database
* Java Database Connectivity to use Java to make SQL inquiries, updates, and deletes
* HTML and CSS bootstrap for the layout for the app
* Spring Framework handles the class objects, HTML, XML, and JSP files.
* A Data Access Object that provides access to the database.

###Lessons Learned
Learned to use prepared statements for the SQL inquiries because it gives added flexibility and protects agains SQL injection.

When using request mapping, the path and id in the index.html have to have correct syntax and matching paths.

Before performing any C.R.U.D methods, ensure the given data by the user meets requirements as to not corrupt or create errors with your database.

Proper and descriptive naming conventions of files helps in being aware of the pathing and where the controller sends the user.

Adding objects to ModelAndView is crucial in transferring data across multiple JSPs. Created paths to a model attribute is another way of transferring data across multiple JSPs.

Understanding the relational mapping between form actions and the Controller class helps understand and control the flow of where the user goes. 
