# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Basic ROS support for the Velodyne 3D LIDARs."
HOMEPAGE="http://www.ros.org/wiki/velodyne"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/velodyne_driver
	ros-galactic/velodyne_laserscan
	ros-galactic/velodyne_msgs
	ros-galactic/velodyne_pointcloud
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
