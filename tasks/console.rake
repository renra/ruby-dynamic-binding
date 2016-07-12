desc 'Runs a console with the library loaded'
task :console do
  require 'irb'
  require 'irb/completion'

  require 'lib/contextual_proc'

  ARGV.clear
  IRB.start
end

