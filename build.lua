#!/usr/bin/env texlua

-- module info
module = "wtref"
version = "1.0.0"

-- check settings
checkengines = {"pdftex"}
checkformat = "latex"

-- doc settings
typesetfiles = {}
docfiles = {
  module .. '.tex', module .. '-ja.tex',
  module .. '.pdf', module .. '-ja.pdf',
}

-- ctan settings
ctanzip = module .. "-" .. version
sourcefiles = {module .. ".sty"}
textfiles = {"README.md", "LICENSE"}
