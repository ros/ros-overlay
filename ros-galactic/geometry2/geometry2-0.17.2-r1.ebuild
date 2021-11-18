# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A metapackage to bring in the default packages second generation Transform [...]"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.17.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/tf2
	ros-galactic/tf2_bullet
	ros-galactic/tf2_eigen
	ros-galactic/tf2_eigen_kdl
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_kdl
	ros-galactic/tf2_msgs
	ros-galactic/tf2_py
	ros-galactic/tf2_ros
	ros-galactic/tf2_sensor_msgs
	ros-galactic/tf2_tools
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
