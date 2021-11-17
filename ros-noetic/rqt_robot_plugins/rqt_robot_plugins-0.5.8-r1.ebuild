# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Metapackage of rqt plugins that are particularly used with robots\
   durin[...]"
HOMEPAGE="http://ros.org/wiki/rqt_robot_plugins"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.5.8-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rqt_moveit
	ros-noetic/rqt_nav_view
	ros-noetic/rqt_pose_view
	ros-noetic/rqt_robot_dashboard
	ros-noetic/rqt_robot_monitor
	ros-noetic/rqt_robot_steering
	ros-noetic/rqt_runtime_monitor
	ros-noetic/rqt_rviz
	ros-noetic/rqt_tf_tree
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
