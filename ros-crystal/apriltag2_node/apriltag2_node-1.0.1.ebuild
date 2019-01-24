# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="AprilTag2 detection node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/christianrauch/${PN}-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/apriltag
	ros-crystal/apriltag_msgs
	ros-crystal/class_loader
	ros-crystal/rclcpp
	ros-crystal/sensor_msgs
	ros-crystal/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
