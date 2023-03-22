# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta package for ros2cli common extensions"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.1.1-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/launch_xml
	ros-humble/launch_yaml
	ros-humble/ros2action
	ros-humble/ros2cli
	ros-humble/ros2component
	ros-humble/ros2doctor
	ros-humble/ros2interface
	ros-humble/ros2launch
	ros-humble/ros2lifecycle
	ros-humble/ros2multicast
	ros-humble/ros2node
	ros-humble/ros2param
	ros-humble/ros2pkg
	ros-humble/ros2run
	ros-humble/ros2service
	ros-humble/ros2topic
	ros-humble/sros2
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
