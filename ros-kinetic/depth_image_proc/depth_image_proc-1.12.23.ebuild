# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains nodelets for processing depth images such as those\
	 produced [...]"
HOMEPAGE="http://ros.org/wiki/depth_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/${PN}/1.12.23-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/eigen_conversions
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/nodelet
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
	test? ( ros-kinetic/rostest )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_filters
	ros-kinetic/sensor_msgs
	ros-kinetic/stereo_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
