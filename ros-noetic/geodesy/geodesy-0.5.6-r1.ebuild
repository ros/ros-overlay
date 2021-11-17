# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/${PN}/0.5.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/unique_id
	ros-noetic/uuid_msgs
	test? ( ros-noetic/rosunit )
	dev-python/pyproj
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
	dev-python/catkin_pkg
	dev-python/setuptools
	dev-python/catkin_pkg
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
