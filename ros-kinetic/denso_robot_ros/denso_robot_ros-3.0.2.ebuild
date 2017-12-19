# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The denso robot ros stack constains libraries, configuration files, and ROS[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_ros"
SRC_URI="https://github.com/DENSORobot/${PN}-release/archive/release/kinetic/${PN}/3.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bcap_core
	ros-kinetic/bcap_service
	ros-kinetic/bcap_service_test
	ros-kinetic/denso_robot_bringup
	ros-kinetic/denso_robot_control
	ros-kinetic/denso_robot_core
	ros-kinetic/denso_robot_core_test
	ros-kinetic/denso_robot_descriptions
	ros-kinetic/denso_robot_gazebo
	ros-kinetic/denso_robot_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
