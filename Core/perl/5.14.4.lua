local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
-- /opt/apps/perlbrew/perls/perl-5.14.4
local pkg     = pathJoin(apps,'perlbrew',pkgName..'s',pkgName..'-'..version)
local pkg = '/opt/apps/perlbrew/perls/perl-5.14.4'
local pkgbin     = pathJoin(pkg,'bin')
prepend_path("PATH", pkgbin)
local pkglib     = pathJoin(pkg,'lib')
local pkgman     = pathJoin(pkg,'man')
setenv("PERL5LIB",pkglib)
prepend_path("LD_LIBRARY_PATH", pkglib)
prepend_path("MANPATH", pkgman)
