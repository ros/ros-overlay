# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Provides launch and configuration scripts for a Gazebo simulated iRobot\(R\[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/gazebo_plugins
	ros-humble/gazebo_ros
	ros-humble/gazebo_ros2_control
	ros-humble/irobot_create_common_bringup
	ros-humble/irobot_create_description
	ros-humble/irobot_create_gazebo_plugins
	ros-humble/ros2launch
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_flake8 )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_cmake_pep257 )
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
