# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A hub acts as a shared key-value store for multiple ros 
	systems (primarily '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/indigo/rocon_hub/0.7.10-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_console
	ros-indigo/rocon_gateway
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_redis
	ros-indigo/rocon_semantic_version
	ros-indigo/rosgraph
	ros-indigo/std_srvs
	net-dns/avahi
	net-dns/avahi
	dev-db/redis
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

