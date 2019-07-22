# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="AprilTag detection node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/christianrauch/${PN}-release/archive/release/dashing/${PN}/2.1.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/apriltag
	ros-dashing/apriltag_msgs
	ros-dashing/cv_bridge
	ros-dashing/image_transport
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/sensor_msgs
	ros-dashing/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
