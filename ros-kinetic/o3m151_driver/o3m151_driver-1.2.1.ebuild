# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS device driver for Ifm O3M151 TOF camera."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/labex-imobs3-gbp/${PN}-release/archive/release/kinetic/${PN}/1.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/nodelet
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	test? ( ros-kinetic/roslaunch )
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
