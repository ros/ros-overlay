# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The tuw_ellipses package contains a computer vision library which is able to det"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_ellipses/0.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/marker_msgs
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

