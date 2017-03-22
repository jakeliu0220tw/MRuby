# host
MRuby::Build.new do |conf|
  # load specific toolchain settings

  # Gets set by the VS command prompts.
  if ENV['VisualStudioVersion'] || ENV['VSINSTALLDIR']
    toolchain :visualcpp
  else
    toolchain :gcc
  end

  enable_debug

  conf.gem :mgem => 'mruby-dir'
  conf.gem :mgem => 'mruby-io'
  #conf.gem :git => 'https://github.com/iij/mruby-require.git'
  #conf.gem :git => 'https://github.com/matsumoto-r/mruby-sleep.git'
  #conf.gem :github => 'iij/mruby-env'
  #conf.gem :git => 'https://github.com/iij/mruby-socket'
  #conf.gem :github => 'iij/mruby-pack'
  #conf.gem :git => 'https://github.com/mattn/mruby-http.git'
  #conf.gem :git => 'https://github.com/matsumoto-r/mruby-simplehttp.git'
  #conf.gem :git => 'https://github.com/luisbebop/mruby-polarssl.git'

  #conf.gem :github => 'iij/mruby-syslog'
  #conf.gem :mgem => 'mruby-curl' # need so file
  #conf.gem :git => 'https://github.com/y-ken/mruby-simplehttp-socket.git'
  #conf.gem :github => 'matsumoto-r/mruby-http2' #compile error
  #conf.gem :git => 'https://github.com/AndrewBelt/mruby-yaml.git' # need so file

  # include the default GEMs
  conf.gembox 'default'
end

