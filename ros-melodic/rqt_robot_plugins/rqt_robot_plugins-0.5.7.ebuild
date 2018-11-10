# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage of rqt plugins that are particularly used with robots\
   durin[...]"
HOMEPAGE="http://ros.org/wiki/rqt_robot_plugins"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.5.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rqt_moveit
	ros-melodic/rqt_nav_view
	ros-melodic/rqt_pose_view
	ros-melodic/rqt_robot_dashboard
	ros-melodic/rqt_robot_monitor
	ros-melodic/rqt_robot_steering
	ros-melodic/rqt_runtime_monitor
	ros-melodic/rqt_rviz
	ros-melodic/rqt_tf_tree
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
