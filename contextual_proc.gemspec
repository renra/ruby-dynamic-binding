Gem::Specification.new do |s|
  s.name        = 'contextual_proc'
  s.version     = '1.0.0'
  s.summary     = "Procs that can run in an arbitrary context"
  s.description = "A proc extension that is able to execute in another context/binding a little bit inspired by JavaScript. Original implementation can be found [here](https://github.com/niklasb/ruby-dynamic-binding)"
  s.authors     = ["Niklas Baumstark", "Jan Renra Gloser"]
  s.email       = 'jan.renra.gloser@gmail.com'
  s.files       = Dir["lib/**/*.rb"]
  s.homepage    = 'https://github.com/renra/ruby-dynamic-binding'
end
