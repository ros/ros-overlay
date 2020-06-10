# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/foxy/${PN}/1.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/angles
	ros-foxy/geographic_msgs
	ros-foxy/geometry_msgs
	ros-foxy/sensor_msgs
	ros-foxy/unique_identifier_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
