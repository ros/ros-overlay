# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geodesy/0.5.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/geographic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/unique_id
	ros-lunar/uuid_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
	dev-python/catkin_pkg
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

