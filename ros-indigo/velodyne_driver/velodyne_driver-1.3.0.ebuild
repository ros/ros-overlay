# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS device driver for Velodyne 3D LIDARs."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/indigo/${PN}/1.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/velodyne_msgs
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
