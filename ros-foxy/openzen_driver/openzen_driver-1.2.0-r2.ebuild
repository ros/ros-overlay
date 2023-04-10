# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS 2 Driver for LP-Research inertial measurement units and satellite navig[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lp-research/openzen_sensor_ros2-release/archive/release/foxy/${PN}/1.2.0-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( MIT BSL-1.0 LGPL-3.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclcpp
	ros-foxy/rqt_plot
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
