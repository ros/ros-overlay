# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="https://index.ros.org/p/image_view/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/${PN}/2.2.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/camera_calibration_parsers
	ros-galactic/cv_bridge
	ros-galactic/image_transport
	ros-galactic/message_filters
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/std_srvs
	ros-galactic/stereo_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
