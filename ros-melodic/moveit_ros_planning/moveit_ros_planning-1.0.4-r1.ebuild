# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Planning components of MoveIt! that use ROS"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/1.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/dynamic_reconfigure
	ros-melodic/message_filters
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_occupancy_map_monitor
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/srdfdom
	ros-melodic/tf2
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
