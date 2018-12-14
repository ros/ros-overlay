# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt! that offer interaction via interactive markers"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/0.10.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/interactive_markers
	ros-melodic/moveit_ros_planning
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
