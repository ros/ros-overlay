# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Odometry slip compensation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/melodic/${PN}/0.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_filters
	ros-melodic/nav_msgs
	ros-melodic/neonavigation_common
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/trajectory_msgs
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
