docker stop rails && docker rm rails
docker run -d --name rails -v "$PWD"/railsapp:/myapp -p 3000:3000  myrailsapp bundle exec rails s -p 3000 -b '0.0.0.0'
