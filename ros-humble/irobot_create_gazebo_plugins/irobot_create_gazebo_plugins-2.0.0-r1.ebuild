# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides the Gazebo plugins for the iRobot\(R\) Create\(R\) 3 Educational R[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/gazebo_dev
	ros-humble/gazebo_ros
	ros-humble/geometry_msgs
	ros-humble/irobot_create_msgs
	ros-humble/irobot_create_toolbox
	ros-humble/rclcpp
	ros-humble/sensor_msgs
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
