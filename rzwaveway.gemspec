Gem::Specification.new do |s|
  s.name = 'rzwaveway'
  s.version = '0.0.4'
  s.authors = ['Vincent Touchard']
  s.date = %q{2014-02-18}
  s.summary = 'ZWave API for ZWay'
  s.description = 'A Ruby API to use the Razberry ZWave ZWay interface'
  s.email = 'vincentoo.ignore@yahoo.com'
  s.homepage = 'https://github.com/touchardv/rzwaveway'
  s.files = `git ls-files`.split("\n")
  s.has_rdoc = false

  dependencies = [
    [:runtime, 'log4r', '~> 1.1.10'],
    [:runtime, 'httpclient', '~> 2.3.4.1'],
    [:development, 'bundler', '~> 1.6.0'],
    [:development, 'rspec', '~> 3.0.0']
  ]

  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end