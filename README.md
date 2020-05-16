# README

fetch(`http://localhost:3000/authenticate`, {
method: "POST",
headers: {
"Content-Type": "application/json",
Accept: "application/json",
},body: JSON.stringify({
email: 'trial@mail.com',
password: 'hihi'
})
}).then(response => json.response()).then(JSONresponse => console.log(JSONresponse))

User.create(name:'hola', email: 'trial@mail.com', password: 'hihi', password_confirmation: 'hihi')

rails db:drop && rails db:create && rails db:migrate && rails db:seed

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
