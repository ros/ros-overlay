# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Open source libraries that will enable the Kinect to be used with Windows, Linux"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/libfreenect-ros-release/archive/release/lunar/libfreenect/0.5.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
	media-libs/freeglut
	virtual/libusb:1
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

