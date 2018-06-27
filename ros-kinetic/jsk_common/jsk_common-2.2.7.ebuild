# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/2.2.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

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
