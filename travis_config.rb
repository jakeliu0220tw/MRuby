MRuby::Build.new('debug') do |conf|
  toolchain :gcc
  enable_debug

  # include all core GEMs
  conf.gembox 'full-core'
  conf.cc.flags += %w(-Werror=declaration-after-statement)
  conf.compilers.each do |c|
    c.defines += %w(MRB_GC_STRESS MRB_GC_FIXED_ARENA)
  end

  build_mrbc_exec
end

MRuby::Build.new do |conf|
  toolchain :gcc

  # include all core GEMs
  conf.gembox 'full-core'
  conf.cc.flags += %w(-Werror=declaration-after-statement)
  conf.compilers.each do |c|
    c.defines += %w(MRB_GC_FIXED_ARENA)
  end
  conf.enable_bintest
  conf.enable_test
end

MRuby::Build.new('cxx_abi') do |conf|
  toolchain :gcc

  conf.gembox 'full-core'
  conf.cc.flags += %w(-Werror=declaration-after-statement)
  conf.compilers.each do |c|
    c.defines += %w(MRB_GC_FIXED_ARENA)
  end
  conf.enable_bintest
  conf.enable_test

  enable_cxx_abi

  build_mrbc_exec
end
