# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS node to detect fiducial markers and determine their pose"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_detect/0.7.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/compressed_image_transport
	ros-kinetic/cv_bridge
	ros-kinetic/fiducial_lib
	ros-kinetic/fiducial_msgs
	ros-kinetic/fiducial_pose
	ros-kinetic/image_transport
	ros-kinetic/orocos_kdl
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

