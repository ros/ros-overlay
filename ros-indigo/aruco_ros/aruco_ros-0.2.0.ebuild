# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ARUCO Library has been developed by the Ava group of the Univeristy of [...]"
HOMEPAGE="http://www.uco.es/investiga/grupos/ava/node/26"
SRC_URI="https://github.com/pal-gbp/aruco_ros-release/archive/release/indigo/aruco_ros/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/aruco
	ros-indigo/aruco_msgs
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
