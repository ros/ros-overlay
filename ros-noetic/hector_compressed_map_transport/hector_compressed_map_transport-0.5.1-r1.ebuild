# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hector_compressed_map_transport provides means for transporting compressed [...]"
HOMEPAGE="http://ros.org/wiki/hector_compressed_map_transport"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/${PN}/0.5.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/hector_map_tools
	ros-noetic/image_transport
	ros-noetic/nav_msgs
	ros-noetic/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
