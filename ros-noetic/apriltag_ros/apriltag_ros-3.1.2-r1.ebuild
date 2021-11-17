# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ROS wrapper of the AprilTag 3 visual fiducial detection\
	algorithm. P[...]"
HOMEPAGE="http://www.ros.org/wiki/apriltag_ros"
SRC_URI="https://github.com/AprilRobotics/${PN}-release/archive/release/noetic/${PN}/3.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/apriltag
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	dev-cpp/eigen
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
