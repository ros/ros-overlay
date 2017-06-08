# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This unary stack contains the dynamic_reconfigure package which provides a means"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/lunar/dynamic_reconfigure/1.5.48-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/rosservice
	ros-lunar/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roscpp_serialization
	ros-lunar/rostest
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
