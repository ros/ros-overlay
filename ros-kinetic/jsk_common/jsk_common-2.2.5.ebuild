# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_common/2.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_tf_publisher
	ros-kinetic/image_view2
	ros-kinetic/jsk_network_tools
	ros-kinetic/jsk_tilt_laser
	ros-kinetic/jsk_tools
	ros-kinetic/jsk_topic_tools
	ros-kinetic/multi_map_server
	ros-kinetic/virtual_force_publisher
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
