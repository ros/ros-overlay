# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/kinetic/rqt_robot_plugins/0.5.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rqt_moveit
	ros-kinetic/rqt_nav_view
	ros-kinetic/rqt_pose_view
	ros-kinetic/rqt_robot_dashboard
	ros-kinetic/rqt_robot_monitor
	ros-kinetic/rqt_robot_steering
	ros-kinetic/rqt_runtime_monitor
	ros-kinetic/rqt_rviz
	ros-kinetic/rqt_tf_tree
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

