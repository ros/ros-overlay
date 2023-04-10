# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generic UDP communication ROS package"
HOMEPAGE="https://continental.github.io/udp_com"
SRC_URI="https://github.com/flynneva/${PN}-release/archive/release/melodic/${PN}/1.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/std_msgs
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
