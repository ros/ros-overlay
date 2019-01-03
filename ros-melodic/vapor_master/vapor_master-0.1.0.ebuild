# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ephemeral ros master node for cloudscale deployment"
HOMEPAGE="http://github.com/roshub/vapor_master"
SRC_URI="https://github.com/roshub/${PN}-release/archive/release/melodic/${PN}/0.1.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rospack
	ros-melodic/std_msgs
	net-libs/nodejs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	net-libs/nodejs[npm]
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
