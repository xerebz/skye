## Skye: Endless Realm Avatar System

### Ubuntu

1. Install the latest Ruby on Rails using RVM: `\curl -sSL https://get.rvm.io | bash -s stable --rails`
2. Install PostgreSQL: `sudo apt-get install postgresql`
3. Create the PostgreSQL role and **set the password to 'avatar'**: `sudo -u postgres createuser -d avatar_demo -P`
4. Install libpq-dev to be able to build the pg (PostgreSQL) gem: `sudo apt-get install libpq-dev`
5. Install Node.js or any other JavaScript runtime: `sudo apt-get install nodejs`
6. Use bundler to install the dependencies: `bundle install`
7. Setup the ActiveRecord database: `rake db:setup`
8. Run the project: `rails server`
9. Open the project: [http://localhost:3000](http://localhost:3000)

### Windows

1. Use RailsInstaller to get Ruby on Rails for Windows: http://railsinstaller.org/
2. Install PostgreSQL from EnterpriseDB: http://www.enterprisedb.com/products/pgdownload.do#windows
3. Create the project's PostgreSQL role:
 - Open pgAdmin and create a new role (right click login roles -> new login role)
 - Under the Properties tab, set role name to *avatar_demo*
 - Under the Definition tab, set password to *avatar*
 - Under the Role Privileges tab, check off *Can create databases*
4. Clone this repository under the RailsInstaller sites folder (default is C:\sites)
5. Set up the projecc's database (use Command prompt with Ruby on Rails): `rake db:setup`
 - The tables will be now be available in the pgAdmin GUI under `databases/avatar_dev/schemas/public/tables`
6. Run the server: `rails server`