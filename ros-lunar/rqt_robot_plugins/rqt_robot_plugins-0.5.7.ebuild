# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/lunar/rqt_robot_plugins/0.5.7-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/rqt_moveit
	ros-lunar/rqt_nav_view
	ros-lunar/rqt_pose_view
	ros-lunar/rqt_robot_dashboard
	ros-lunar/rqt_robot_monitor
	ros-lunar/rqt_robot_steering
	ros-lunar/rqt_runtime_monitor
	ros-lunar/rqt_rviz
	ros-lunar/rqt_tf_tree
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

