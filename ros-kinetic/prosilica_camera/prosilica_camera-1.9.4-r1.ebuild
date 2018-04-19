# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS driver node for AVT/Prosilica Gigabit Ethernet \(GigE\) cameras."
HOMEPAGE="http://www.ros.org/wiki/prosilica_camera"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/kinetic/${PN}/1.9.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/driver_base
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/polled_camera
	ros-kinetic/prosilica_gige_sdk
	ros-kinetic/roscpp
	ros-kinetic/self_test
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rosconsole
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
