EAPI=5

inherit cmake-utils

DESCRIPTION="API that provides a C++ object representation of a COLLADA XML instance document"
HOMEPAGE="http://collada.org/mediawiki/index.php/COLLADA_DOM"

SRC_URI="mirror://sourceforge/${PN}/Collada%20DOM/Collada%20DOM%20${PV:0:3}/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/boost
	dev-libs/libxml2
	virtual/opengl
	media-libs/freeglut
	>=media-gfx/nvidia-cg-toolkit-2.0
"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.6.0
"
