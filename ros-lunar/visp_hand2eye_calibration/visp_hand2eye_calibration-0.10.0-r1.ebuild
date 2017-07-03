# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="visp_hand2eye_calibration estimates the camera position with respect
	 to its"
HOMEPAGE="http://wiki.ros.org/visp_hand2eye_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/lunar/visp_hand2eye_calibration/0.10.0-1.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/image_proc
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/visp
	ros-lunar/visp_bridge
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

