# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hrpsys_gazebo_general"
HOMEPAGE="http://ros.org/wiki/hrpsys_gazebo_general"
SRC_URI="https://github.com/tork-a/rtmros_gazebo-release/archive/release/indigo/hrpsys_gazebo_general/0.1.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/collada_urdf_jsk_patch
	ros-indigo/gazebo_ros
	ros-indigo/hrpsys_gazebo_msgs
	ros-indigo/hrpsys_ros_bridge
	ros-indigo/turtlebot_description
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
