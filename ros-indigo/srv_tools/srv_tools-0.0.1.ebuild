# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Stack with interesting ROS tools'"
HOMEPAGE="http://ros.org/wiki/srv_tools"
SRC_URI="https://github.com/srv/srv_tools-release/archive/release/indigo/srv_tools/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bag_tools
	ros-indigo/launch_tools
	ros-indigo/plot_tools
	ros-indigo/pointcloud_tools
	ros-indigo/tf_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

