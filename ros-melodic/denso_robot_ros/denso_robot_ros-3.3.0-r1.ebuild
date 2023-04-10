# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The denso robot ros stack constains libraries, configuration files, and ROS[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_ros"
SRC_URI="https://github.com/DENSORobot/${PN}-release/archive/release/melodic/${PN}/3.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/bcap_core
	ros-melodic/bcap_service
	ros-melodic/bcap_service_test
	ros-melodic/denso_robot_bringup
	ros-melodic/denso_robot_control
	ros-melodic/denso_robot_core
	ros-melodic/denso_robot_core_test
	ros-melodic/denso_robot_descriptions
	ros-melodic/denso_robot_gazebo
	ros-melodic/denso_robot_moveit_config
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
