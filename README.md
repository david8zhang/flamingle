# panacea


Title: Panacea

Team Members: Helen Che, Nathaniel Mahowald, Jiahao Huang, David Zhang

Demo Link: http://serene-reef-7812.herokuapp.com/


# Idea:  

An application that allows users to create and host charities for a number of worldwide causes of death, and that visualizes worldwide 
causes of death for website visitors. Users should be able to create charities, and donate to other's charities, and see their own 
donations and charities that they manage


# Models and Description:

Charities - the charities themselves. Charities have a name, description, Cause of death id, country id and donation id (for the join tables)

Causes of Death (cods) - correspond to the diseases. Cods have a name and charity id (for the join table) 

Countries - the countries on the map. Countries have a name

Country_cods - a join table between countries and causes of death in order to create many to many relationships between countries and diseases

Donations - the donations to different charities. Donations have a user_id, charity_id

User_charities - a join table between users and charities in order to create many to many relationships between users and charities

Users - the users. Users have an email and password


# Features:

Visualize disease impact distribution across the globe

Users can see data on a disease’s impact based on deathtoll

Users can donate to charities that operate in chosen regions

Users can filter by disease


# Division of Labor:

David - Created charities creation and listing page

Helen - Created styling, most of the models, index page, donations

Nathaniel - Obtained the data, created the country map

Jiahao - Created the user dashboard


# Gems Used: 

gon - used for rendering the Google charts data on a map
https://github.com/gazay/gon


