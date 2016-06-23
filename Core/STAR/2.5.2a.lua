local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
local pkg     = pathJoin(apps,pkgName,version)
prepend_path("PATH", pathJoin(pkg,'bin','Linux_x86_64'))
