# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The assisted_teleop node subscribes to a desired trajectory topic\
	\(ge[...]"
HOMEPAGE="http://wiki.ros.org/assisted_teleop"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/angles
	ros-melodic/base_local_planner
	ros-melodic/costmap_2d
	ros-melodic/filters
	ros-melodic/geometry_msgs
	ros-melodic/message_filters
	ros-melodic/move_base_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	ros-melodic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
