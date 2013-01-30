desc 'Start the application'
task :start do
  system "bundle exec thin -R config.ru start"
end
