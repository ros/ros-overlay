# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Basic ROS support for the Velodyne 3D LIDARs."
HOMEPAGE="http://www.ros.org/wiki/velodyne"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/kinetic/${PN}/1.5.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/velodyne_driver
	ros-kinetic/velodyne_laserscan
	ros-kinetic/velodyne_msgs
	ros-kinetic/velodyne_pointcloud
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
