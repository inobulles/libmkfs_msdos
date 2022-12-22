// C compilation

var cc = CC.new()

cc.add_opt("-std=c99")
cc.add_opt("-isystem=/usr/local/include")
cc.add_opt("-Isrc")
cc.add_opt("-fPIC")
cc.add_opt("-Wall")
cc.add_opt("-Wextra")

var src = File.list("src")
	.where { |path| path.endsWith(".c") }

src
	.each { |path| cc.compile(path) }

// create static & dynamic libraries

var linker = Linker.new(cc)

linker.archive(src.toList, "libmkfs_msdos.a")
linker.link(src.toList, [], "libmkfs_msdos.so", true)

// copy over headers

File.list("src")
	.where { |path| path.endsWith(".h") }
	.each  { |path| Resources.install(path) }

// installation map

var install = {
	"libmkfs_msdos.a":  "%(Meta.prefix())/lib/libmkfs_msdos.a",
	"libmkfs_msdos.so": "%(Meta.prefix())/lib/libmkfs_msdos.so",
	"mkfs_msdos.h":     "%(Meta.prefix())/lib/mkfs_msdos.h",
}

// testing
// TODO, but maybe not while this is still temporary

class Tests {
}

var tests = []
