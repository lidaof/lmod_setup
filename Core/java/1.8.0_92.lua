local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
local pkg     = pathJoin(apps,pkgName,'jdk'..version)
setenv("JAVA_HOME",pkg)
local pkgbin     = pathJoin(pkg,'bin')
prepend_path("PATH", pkgbin)
local pkglib     = pathJoin(pkg,'lib')
local pkglib2     = pathJoin(pkg,'jre/lib/amd64/server')
prepend_path("LD_LIBRARY_PATH", pkglib)
prepend_path("LD_LIBRARY_PATH", pkglib2)
setenv("R_JAVA_LD_LIBRARY_PATH",pkglib2)