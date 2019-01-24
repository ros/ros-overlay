# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS device driver for Velodyne 3D LIDARs."
HOMEPAGE="http://www.ros.org/wiki/velodyne_driver"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/${PN}/1.5.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/diagnostic_updater
	ros-lunar/dynamic_reconfigure
	ros-lunar/nodelet
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf
	ros-lunar/velodyne_msgs
	test? ( ros-lunar/roslaunch )
	test? ( ros-lunar/rostest )
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
