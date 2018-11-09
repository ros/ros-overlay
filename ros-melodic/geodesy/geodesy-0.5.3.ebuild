# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/${PN}/0.5.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geographic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/unique_id
	ros-melodic/uuid_msgs
	test? ( ros-melodic/rosunit )
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
