# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The dingo_description package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/${PN}/0.3.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fath_pivot_mount_description
	ros-noetic/flir_camera_description
	ros-noetic/lms1xx
	ros-noetic/realsense2_description
	ros-noetic/robot_state_publisher
	ros-noetic/sick_tim
	ros-noetic/urdf
	ros-noetic/velodyne_description
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
