#!/usr/bin/env texlua

-- module info
module = "wtref"
version = "0.4.0"

-- check settings
stdengine = "pdftex"
checkengines = {"pdftex"}
checkformat = "latex"

-- doc settings
typesetfiles = {}
docfiles = {module .. '.tex', module .. '-ja.tex'}

-- ctan settings
ctanzip = module .. "-" .. version
sourcefiles = {module .. ".sty"}
textfiles = {"README.md", "LICENSE"}

-- setup kpse
kpse.set_program_name("luatex")

-- load l3build
dofile(kpse.lookup("l3build.lua"))
