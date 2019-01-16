# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/indigo/${PN}/0.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/costmap_cspace_msgs
	ros-indigo/geometry_msgs
	ros-indigo/laser_geometry
	ros-indigo/nav_msgs
	ros-indigo/neonavigation_common
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
	ros-indigo/tf2_sensor_msgs
	ros-indigo/xmlrpcpp
	test? ( ros-indigo/roslint )
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/rosunit )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
