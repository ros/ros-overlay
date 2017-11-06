# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package allows user to create a map of Aruco markers in 2D or 3D space[...]"
HOMEPAGE="http://www.smartroboticsys.eu"
SRC_URI="https://github.com/SmartRoboticSystems/aruco_mapping-release/archive/release/indigo/aruco_mapping/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/aruco
	ros-indigo/camera_calibration_parsers
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
