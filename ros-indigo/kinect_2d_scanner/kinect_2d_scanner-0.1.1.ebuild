# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Kinect grabber as 2D laser scans"
HOMEPAGE="http://wiki.ros.org/kinect_2d_scanner"
SRC_URI="https://github.com/mrpt-ros-pkg-release/kinect_2d_scanner-release/archive/release/indigo/kinect_2d_scanner/0.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/mrpt_bridge
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/driver_base
	ros-indigo/roscpp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

