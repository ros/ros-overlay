# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_teleop package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/${PN}/0.6.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="TODO-CATKIN-PACKAGE-LICENSE"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/geometry_msgs
	ros-noetic/pr2_controllers_msgs
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/topic_tools
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
