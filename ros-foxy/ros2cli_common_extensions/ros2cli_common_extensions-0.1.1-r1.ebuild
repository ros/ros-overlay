# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta package for ros2cli common extensions"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/launch_xml
	ros-foxy/launch_yaml
	ros-foxy/ros2action
	ros-foxy/ros2cli
	ros-foxy/ros2component
	ros-foxy/ros2doctor
	ros-foxy/ros2interface
	ros-foxy/ros2launch
	ros-foxy/ros2lifecycle
	ros-foxy/ros2multicast
	ros-foxy/ros2node
	ros-foxy/ros2param
	ros-foxy/ros2pkg
	ros-foxy/ros2run
	ros-foxy/ros2service
	ros-foxy/ros2topic
	ros-foxy/sros2
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
