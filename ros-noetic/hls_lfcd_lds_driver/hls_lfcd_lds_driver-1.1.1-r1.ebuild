# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="ROS package for LDS\(HLS-LFCD2\).\
	The LDS \(Laser Distance Sensor\) is[...]"
HOMEPAGE="http://wiki.ros.org/hls_lfcd_lds_driver"
SRC_URI="https://github.com/ROBOTIS-GIT-release/hls-lfcd-lds-driver-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
