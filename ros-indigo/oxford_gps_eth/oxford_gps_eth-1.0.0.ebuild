# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ethernet interface to OxTS GPS receivers \(NCOM packet structure\)"
HOMEPAGE="http://wiki.ros.org/oxford_gps_eth"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/indigo/${PN}/1.0.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/gps_common
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/roslaunch
	ros-indigo/sensor_msgs
	ros-indigo/tf
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
