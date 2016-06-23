local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
local pkg     = pathJoin(apps,pkgName,version)
prepend_path("PATH", pkg)
prepend_path("PATH", pathJoin(pkg,'scripts'))
