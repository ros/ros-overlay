# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/2.2.11-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_tf_publisher
	ros-noetic/image_view2
	ros-noetic/jsk_network_tools
	ros-noetic/jsk_tilt_laser
	ros-noetic/jsk_tools
	ros-noetic/jsk_topic_tools
	ros-noetic/multi_map_server
	ros-noetic/virtual_force_publisher
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
