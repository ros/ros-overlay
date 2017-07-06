# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/indigo/rqt_robot_plugins/0.5.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rqt_moveit
	ros-indigo/rqt_nav_view
	ros-indigo/rqt_pose_view
	ros-indigo/rqt_robot_dashboard
	ros-indigo/rqt_robot_monitor
	ros-indigo/rqt_robot_steering
	ros-indigo/rqt_runtime_monitor
	ros-indigo/rqt_rviz
	ros-indigo/rqt_tf_tree
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

