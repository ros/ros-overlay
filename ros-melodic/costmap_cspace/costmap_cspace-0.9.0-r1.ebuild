# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/melodic/${PN}/0.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/costmap_cspace_msgs
	ros-melodic/geometry_msgs
	ros-melodic/laser_geometry
	ros-melodic/nav_msgs
	ros-melodic/neonavigation_common
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/tf2_sensor_msgs
	ros-melodic/xmlrpcpp
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
