# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/2.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_tf_publisher
	ros-melodic/image_view2
	ros-melodic/jsk_network_tools
	ros-melodic/jsk_tilt_laser
	ros-melodic/jsk_tools
	ros-melodic/jsk_topic_tools
	ros-melodic/multi_map_server
	ros-melodic/virtual_force_publisher
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
