![Build Status](https://codeship.com/projects/a1ba4fb0-76ad-0134-de23-62fee7f34e3c/status?branch=master)
![Code Climate](https://codeclimate.com/github/alex-barstow/divetank.png)
![Coverage Status](https://coveralls.io/repos/alex-barstow/divetank/badge.png)

# DiveTank
[Visit DiveTank on Heroku](https://divetank.herokuapp.com/)
* Sign in using demo user account:
* Email: demo-user@divetank.com
* Password: divedivedive!

### Synopsis
The logbook is an essential tool in every diver's toolkit. This project is an augmentation of the traditional dive logbook that lets users record important data about each of their dives, attach photos and video, use charts to visualize summary data about their total dive career, and access their logbook remotely.

This was built in 2 weeks for my final project as an apprentice at the Boston-based full-stack bootcamp, Launch Academy. It's an ongoing project and I plan on continuing to make improvements and additions in the near future.

### Features

* Create and update their own personal account.
* Optionally add an avatar to further personalize their account.
* Specify their certifications and the agency from which they received them
* Create a new dive log entry by providing a title, site name, date, max depth, and rating.
* Optionally add more information such as dive duration, weather conditions, water and air temperature, etc.
* (Note: The number of a given log entry is calculated relative to the number of dives a user had logged prior to signing up, which can be updated or corrected by the user at any time.)
* Upload photos and embed YouTube videos for individual dive entries
* View a column chart of the distribution of dives logged within different depth ranges
* View a scatterplot of dives' depths and dates

### Installation

* In a terminal, run git clone https://github.com/alex-barstow/divetank.git.
* Navigate to the project's root directory with cd divetank.
* Run bundle install && npm install && rake db:setup.
* In two separate terminals, run rails server and npm start from the project's root directory.
* Visit http://localhost:3000 in your browser.

### Technologies Used

* Backend: Rails 5.0.0.1
* Frontend: React.js and Embedded Ruby
* User Authentication: Devise
* Image Uploader: CarrierWave
* Image Hosting: Amazon Web Services (s3)
* Charts: React Google Charts
* Styling: Foundation
* Database: Postgres
* Testing: RSpec, FactoryGirl, Capybara, Capybara-Webkit
