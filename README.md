# Showtime
App for managing movie theater auditoriums, shows, and screenings

## Thought Process
- Movies belong to auditoriums
- Screenings belong to movies
- Orders belong to movies through screenings
- Seating capacity is set on individual screenings upon creation
- Each order reduces a screenings seating capacity until sold out
- When a screening is sold out, its buttons are disabled and a message is displayed
- Controller code should prevent ability to access order form through back button usage or direct access to page


### As a theater owner
- [x] I should be able to add auditoriums and their seating compacities
- [x] I should be able to assign movies to auditoriums
- [x] I should be able to add screenings to movies
- [x] I should see a list of total orders
- [x] I should see a list of orders for each movie

### As a customer
- [x] I should see a list of all movies and their screenings
- [x] I should be able to purchase a ticket unless the movie is sold out
- [x] I should be able to enter valid information to complete my order
- [x] I should receive an email receipt

### Other requirements/notes
- [x] Customers can only buy one ticket at a time
- [x] Valid checkout includes name, email, credit card, and expiration date
- [x] Must work on mobile

