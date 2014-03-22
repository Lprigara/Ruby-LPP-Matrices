$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'  

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecutar con documentacion"
task :test do
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end 

desc "Ejecutar en formato HTML"
task :thtml do
  sh "rspec -I. spec/fraccion_spec.rb --format html"
end 


desc "Ejecutar el main"
task :bin do
  sh "./lib/fraccion.rb"
end 
