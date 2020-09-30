files=`pwd`
rails new $1 -d=postgresql --skip-coffee -m railway.rb
cd $1
cp -r $files/package.json .
cp -r $files/db/seeds.rb db
cp -r $files/config/routes.rb config
cp -r $files/app/views/layouts/railway.html.erb app/views/layouts
cp -r $files/app/views/counters/railway.html.erb app/views/counters
cp -r $files/babel.config.js .
cp -r $files/app/controllers/counters_controller.rb app/controllers
cp -r $files/app/assets/images/* app/assets/images
cp -r $files/app/javascript app
cp -r $files/app/controllers/api/v1/counters_controller.rb app/controllers/api/v1
yarn install --check-files
./bin/rake db:seed
./bin/webpack
