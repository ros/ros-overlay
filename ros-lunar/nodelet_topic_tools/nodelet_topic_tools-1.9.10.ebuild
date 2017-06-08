# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package contains common nodelet tools such as a mux, demux and throttle."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/nodelet_core-release/archive/release/lunar/nodelet_topic_tools/1.9.10-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/message_filters
	ros-lunar/nodelet
	ros-lunar/pluginlib
	ros-lunar/roscpp
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
	default
	mv *${P}* ${P}
}

src_configure() {
	append-cxxflags "-std=c++11"
	export DEST_SETUP_DIR="/${ROS_PREFIX}"
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
		-DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
		-DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
		-DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
		-DCATKIN_BUILD_BINARY_PACKAGE=1
		-DCATKIN_ENABLE_TESTING=OFF
	 )
	cmake-utils_src_configure
}

src_install() {
	cd ${WORKDIR}/${P}_build
	make install || die
}
