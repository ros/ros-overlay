# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS package for LDS\(HLS-LFCD2\).\
	The LDS \(Laser Distance Sensor\) is[...]"
HOMEPAGE="http://wiki.ros.org/hls_lfcd_lds_driver"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
