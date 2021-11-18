# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta package for ros2cli common extensions"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.1.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/launch_xml
	ros-galactic/launch_yaml
	ros-galactic/ros2action
	ros-galactic/ros2cli
	ros-galactic/ros2component
	ros-galactic/ros2doctor
	ros-galactic/ros2interface
	ros-galactic/ros2launch
	ros-galactic/ros2lifecycle
	ros-galactic/ros2multicast
	ros-galactic/ros2node
	ros-galactic/ros2param
	ros-galactic/ros2pkg
	ros-galactic/ros2run
	ros-galactic/ros2service
	ros-galactic/ros2topic
	ros-galactic/sros2
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
