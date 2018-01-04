# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://ros.org/wiki/image_rotate"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/indigo/${PN}/1.12.21-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/tf2
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
