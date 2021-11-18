# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros2-gbp/geographic_info-release/archive/release/galactic/${PN}/1.0.4-5.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/angles
	ros-galactic/geographic_msgs
	ros-galactic/geometry_msgs
	ros-galactic/sensor_msgs
	ros-galactic/unique_identifier_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
