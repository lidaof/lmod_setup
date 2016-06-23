local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
local pkg     = pathJoin(apps,pkgName,"bin")
prepend_path("PATH", pkg)
