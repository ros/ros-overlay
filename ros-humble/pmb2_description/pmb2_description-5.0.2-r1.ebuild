# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Mechanical, kinematic, visual, etc. description of the PMB2 robot.\
	  T[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/${PN}/5.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/joint_state_publisher_gui
	ros-humble/launch
	ros-humble/launch_pal
	ros-humble/launch_param_builder
	ros-humble/launch_ros
	ros-humble/pmb2_controller_configuration
	ros-humble/rviz2
	ros-humble/xacro
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/urdf_test )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
