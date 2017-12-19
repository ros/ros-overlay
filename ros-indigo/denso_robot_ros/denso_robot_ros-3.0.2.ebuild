# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The denso robot ros stack constains libraries, configuration files, and ROS[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_ros"
SRC_URI="https://github.com/DENSORobot/${PN}-release/archive/release/indigo/${PN}/3.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bcap_core
	ros-indigo/bcap_service
	ros-indigo/bcap_service_test
	ros-indigo/denso_robot_bringup
	ros-indigo/denso_robot_control
	ros-indigo/denso_robot_core
	ros-indigo/denso_robot_core_test
	ros-indigo/denso_robot_descriptions
	ros-indigo/denso_robot_gazebo
	ros-indigo/denso_robot_moveit_config
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
