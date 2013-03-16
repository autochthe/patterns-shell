# sourcedir
# source all the files in a directory
#
# Copyright (C) 2013 Mara Kim
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see http://www.gnu.org/licenses/.


### USAGE ###

# Use template-source.d to create your sourcer
# See README.md for more info


### TEMPLATES ###

function template-sourcedir {

local MYDIR=$1

cat << TEMPLATE
# source all files in $MYDIR
for f in \$(dirname $BASH_SOURCE)/$MYDIR/*
 do source \$f
done

TEMPLATE
}


