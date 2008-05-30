require 'rubygems'
require 'rake'
require 'rake/gempackagetask'
load    'mtest.gemspec'

Rake::GemPackageTask.new(MTEST_GEMSPEC) do |pkg|
  pkg.need_tar_bz2 = true
end
task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
  puts "generated latest version"
end
