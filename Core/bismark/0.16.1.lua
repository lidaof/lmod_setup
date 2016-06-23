local apps = '/opt/apps'
local version = myModuleVersion()
local pkgName = myModuleName()
local pkg     = pathJoin(apps,pkgName,version)
prepend_path("PATH", pkg)
load('bowtie2','bowtie','samtools')
