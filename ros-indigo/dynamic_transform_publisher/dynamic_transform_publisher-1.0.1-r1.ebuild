# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Publish a static transform configured through dynamic reconfigure"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/athackst/dynamic_transform_publisher-release/archive/release/indigo/dynamic_transform_publisher/1.0.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/interactive_markers
	ros-indigo/roscpp
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
