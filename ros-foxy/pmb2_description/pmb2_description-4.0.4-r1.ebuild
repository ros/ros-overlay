# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Mechanical, kinematic, visual, etc. description of the PMB2 robot.\
	  T[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/${PN}/4.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/joint_state_publisher_gui
	ros-foxy/launch
	ros-foxy/launch_pal
	ros-foxy/launch_ros
	ros-foxy/pmb2_controller_configuration
	ros-foxy/xacro
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/urdf_test )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
	ros-foxy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
