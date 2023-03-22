#!/bin/bash
#
# Filter out requirement for a package proviing /bin/python
# On CentOS7 - /bin/python provided by system python
# On EL8/EL9 - Needs to be set up with alternatives (bin-python packages in yaml2rpm will do this) 

/usr/lib/rpm/find-requires $* | sed  -e '/^\/bin\/python/d' 
