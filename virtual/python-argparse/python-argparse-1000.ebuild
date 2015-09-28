# Copyright owners: Arfrever Frehtes Taifersar Arahesis
# Distributed under the terms of the GNU General Public License v2

EAPI="5-progress"
PYTHON_MULTIPLE_ABIS="1"

inherit python

DESCRIPTION="Virtual for argparse Python module"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND=""
RDEPEND="$(python_abi_depend -i "2.6 3.1" dev-python/argparse)"
