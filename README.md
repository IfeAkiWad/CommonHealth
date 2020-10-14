# CommonHealth

## Description
This is the Flatiron Rails Portfolio Project. My project is a web app called, CommonHealth. CommonHealth gives black users the opportunity to connect to black doctors in the United States through reviews given by other users.

It is a database of three tables: doctors, users, and reviews (join table). There are three models (User, Doctor, Review) that have "has-many" (User and Doctor have many reviews), "belongs-to" (Review belongs to user and doctor), and "has-many through" (User has many doctors through reviews, and vice versa) relationships. A user will either sign up, or log in (with omniauth option) to access the web app. Once the session is created, the user will be redirected to a provided list of doctors (searchable by location or specialty). Users can create reviews for specific doctors, as well as edit or delete. However, user validation is necessary to execute such action.

## Installation

Use Bundle Install to install necessary gems

```bash
ruby '2.6.1'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
gem 'dotenv-rails'
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)

