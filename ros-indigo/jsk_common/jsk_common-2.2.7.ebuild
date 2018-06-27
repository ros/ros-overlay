# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/2.2.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_tf_publisher
	ros-indigo/image_view2
	ros-indigo/jsk_network_tools
	ros-indigo/jsk_tilt_laser
	ros-indigo/jsk_tools
	ros-indigo/jsk_topic_tools
	ros-indigo/multi_map_server
	ros-indigo/virtual_force_publisher
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
