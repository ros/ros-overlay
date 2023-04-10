# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="https://index.ros.org/p/image_view/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/${PN}/2.3.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/camera_calibration_parsers
	ros-foxy/cv_bridge
	ros-foxy/image_transport
	ros-foxy/message_filters
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/std_srvs
	ros-foxy/stereo_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
