# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver node for ROS 2 for Scarlet, SceneScan and SP1 stereo vision sensors [...]"
HOMEPAGE="http://wiki.ros.org/nerian_stereo"
SRC_URI="https://github.com/nerian-vision/${PN}_ros2-release/archive/release/galactic/${PN}/1.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_cmake
	ros-galactic/cv_bridge
	ros-galactic/rosidl_default_generators
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/stereo_msgs
	ros-galactic/tf2
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
