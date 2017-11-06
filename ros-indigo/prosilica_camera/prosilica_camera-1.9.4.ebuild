# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS driver node for AVT/Prosilica Gigabit Ethernet GigE cameras"
HOMEPAGE="http://www.ros.org/wiki/prosilica_camera"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/indigo/prosilica_camera/1.9.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/polled_camera
	ros-indigo/prosilica_gige_sdk
	ros-indigo/roscpp
	ros-indigo/self_test
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosconsole
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

