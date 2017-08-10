# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD License

EAPI=6

inherit cmake-utils flag-o-matic

DESCRIPTION="Mobile Robot Programming Toolkit"
HOMEPAGE="http://www.mrpt.org/"
SRC_URI="https://github.com/MRPT/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD-3-Clause"
# Subslot = major version = soname of libs
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="ftdi dc1394"

RDEPEND="
	dev-cpp/eigen
	sci-libs/suitesparse
	media-libs/opencv
	x11-libs/wxGTK
	virtual/ffmpeg
	virtual/glu
	sys-libs/zlib
	virtual/jpeg
	ftdi? ( dev-embedded/libftdi )
	dc1394? ( media-libs/libdc1394 )
	virtual/libusb
	sci-libs/pcl
	virtual/udev
	net-libs/libpcap
"
DEPEND="${RDEPEND}"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
	default
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
				 EPATCH_FORCE="yes" epatch
}
