![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name: MyMoney

> This capstone project is a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.


## Built With

- Ruby on Rails
- PostgreSql
- Boostrap
- Rspec

## Presentation Link

[Presentation](https://livedemo.com)

## Live Demo (if available)

[Live Demo Link](https://www.loom.com/share/4d67323c26aa482da1e49be81bcbba62)

## Getting Started

To get a local copy up and running follow these simple example steps.
- Clone Repository using
`git clone https://github.com/NeckerFree/MyMoney`
- Move into project directory
`cd MyMoney`
### Setup Database 
- Make sure that your Postgres database is installed.
-  Open the file config\database.yml
- Modify the connection parameters to point your Postgres      Database:
    `username: [your_user]`
    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`
### Run Tests
- Install rspec: `bundle install`
- Run all tests: `rspec`
- Run all tests and show test documentation: `rspec spec --format documentation`

### Run App
- If required (Not for testing) run `rails server`
- Visit http://localhost:3000/ in your browser!

## Author

👤 **Elio Cortés**

- GitHub: [@NeckerFree](https://github.com/NeckerFree)
- Twitter: [@ElioCortesM](https://twitter.com/ElioCortesM)
- LinkedIn: [elionelsoncortes](https://www.linkedin.com/in/elionelsoncortes/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.

