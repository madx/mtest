Gem::Specification.new do |spec|
  spec.platform = Gem::Platform::RUBY
  spec.name = 'mtest'
  spec.summary = "A micro test framework"
  spec.version = File.read('VERSION').strip
  spec.author = 'François Vaux'
  spec.email = 'root+mtest@yapok.org'
  spec.description = <<-END
      MTest is a microframework for testing your Ruby programs.
      It is inspired from Paul Barry's "One line test framework" which you can
      found at http://paulbarry.com/articles/2008/05/23/a-ruby-test-framework-in-one-line.
    END
  spec.files = %w(lib/mtest.rb README VERSION Rakefile)
  spec.homepage = 'http://yapok.org/'
  spec.has_rdoc = false
end
