# libmkfs_msdos

Library for creating VFAT filesystems, based on the [FreeBSD `newfs_msdos(8)` utility](https://www.freebsd.org/cgi/man.cgi?query=newfs_msdos).

Previously, this library was found in [`aquabsd-pkg-repo`](https://github.com/inobulles/aquabsd-pkg-repo), but to work better as a singular dependency for use in other projects, I've temporarily split this out into a separate repo.
Temporary you say?
Yes, Temporary™! I'd like this to be reimplemented into a generic filesystem manipulation library, something along the lines of `libfsutils`, which would also include what's currently in [`libcopyfile`](https://github.com/inobulles/libcopyfile).
But that's not for right now 😉

# Copyright stuff

Copyright over the source is held by Robert Nordier, and is licensed under the BSD-2-Clause-FreeBSD license (SPDX identifier).
A copy of the license text may be found in the `LICENSE` file in the root directory.
