# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/${PN}/1.0.4-6.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/angles
	ros-humble/geographic_msgs
	ros-humble/geometry_msgs
	ros-humble/sensor_msgs
	ros-humble/unique_identifier_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
