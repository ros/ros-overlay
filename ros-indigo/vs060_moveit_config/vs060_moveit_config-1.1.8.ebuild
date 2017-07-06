# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'An automatically generated package with all the configuration and launch files f'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/start-jsk/denso-release/archive/release/indigo/vs060_moveit_config/1.1.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_visualization
	ros-indigo/pr2_moveit_plugins
	ros-indigo/robot_mechanism_controllers
	ros-indigo/robot_state_publisher
	ros-indigo/vs060
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

