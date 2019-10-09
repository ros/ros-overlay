# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS wrapper of the AprilTag 3 visual fiducial detection\
	algorithm. P[...]"
HOMEPAGE="http://www.ros.org/wiki/apriltag_ros"
SRC_URI="https://github.com/AprilRobotics/${PN}-release/archive/release/melodic/${PN}/3.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/apriltag
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	dev-cpp/eigen
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
