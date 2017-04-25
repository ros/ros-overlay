EAPI=5

inherit toolchain-funcs cmake-utils

DESCRIPTION="The Point Cloud Library (or PCL) is a large scale, open project for 3D point cloud processing."
HOMEPAGE="http://www.pointclouds.org"
SRC_URI="https://github.com/PointCloudLibrary/pcl/archive/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="qhull cuda mpi qt4 doc test +tools"

# dependencies: http://pointclouds.org/downloads/source.html
RDEPEND="
	>=dev-libs/boost-1.46
	dev-cpp/eigen:3
	>=sci-libs/flann-1.7.1
	virtual/libusb
	>=sci-libs/vtk-5.6.0
	<sci-libs/vtk-6
	qt4? ( sci-libs/vtk[qt4] dev-qt/qtcore:4 )
	qhull? ( >=media-libs/qhull-2011.1 )
	cuda? ( >=dev-util/nvidia-cuda-toolkit-4 )
	mpi? ( virtual/mpi )
"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8.3
	doc? ( app-doc/doxygen )
	test? ( >=dev-cpp/gtest-1.6.0 )
"

PATCHES=(
	"${FILESDIR}/${P}-with.patch"
)

CMAKE_BUILD_TYPE="Release"

S=${WORKDIR}/pcl-${P}

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_with mpi)
		$(cmake-utils_use_build doc)
		$(cmake-utils_use_build tools)
		$(cmake-utils_use_build test TESTS)
		$(cmake-utils_has cuda)
	)

	# no openni support yet
	mycmakeargs+=( "-DWITH_OPENNI=OFF" )

	cmake-utils_src_configure
}
