# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver node for ROS 2 for Scarlet, SceneScan and SP1 stereo vision sensors [...]"
HOMEPAGE="http://wiki.ros.org/nerian_stereo"
SRC_URI="https://github.com/nerian-vision/${PN}_ros2-release/archive/release/foxy/${PN}/1.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_cmake
	ros-foxy/cv_bridge
	ros-foxy/rosidl_default_generators
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/stereo_msgs
	ros-foxy/tf2
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
