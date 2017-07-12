# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The yumi_launch package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OrebroUniversity/yumi_release/archive/release/indigo/yumi_launch/0.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/yumi_description
	ros-indigo/yumi_hw
	ros-indigo/yumi_moveit_config
	ros-indigo/yumi_support
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

