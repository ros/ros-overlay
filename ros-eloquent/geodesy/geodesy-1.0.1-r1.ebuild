# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/eloquent/${PN}/1.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/angles
	ros-eloquent/geographic_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/sensor_msgs
	ros-eloquent/unique_identifier_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
