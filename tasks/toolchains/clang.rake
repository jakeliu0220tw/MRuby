MRuby::Toolchain.new(:clang) do |conf|
  toolchain :gcc

  [conf.cc, conf.objc, conf.asm].each do |cc|
    cc.command = ENV['CC'] || 'clang'
  end
  conf.cxx.command = ENV['CXX'] || 'clang++'
  conf.linker.command = ENV['LD'] || 'clang'
end
