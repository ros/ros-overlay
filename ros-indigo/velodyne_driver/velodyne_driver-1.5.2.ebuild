# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS device driver for Velodyne 3D LIDARs."
HOMEPAGE="http://www.ros.org/wiki/velodyne_driver"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/indigo/${PN}/1.5.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/velodyne_msgs
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
