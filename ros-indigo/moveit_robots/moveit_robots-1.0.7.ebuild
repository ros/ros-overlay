# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="moveit_robots meta-package contains multiple robots moveit configuration pa[...]"
HOMEPAGE="http://wiki.ros.org/moveit_robots"
SRC_URI="https://github.com/ros-gbp/moveit_robots-release/archive/release/indigo/moveit_robots/1.0.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/atlas_moveit_config
	ros-indigo/atlas_v3_moveit_config
	ros-indigo/baxter_ikfast_left_arm_plugin
	ros-indigo/baxter_ikfast_right_arm_plugin
	ros-indigo/baxter_moveit_config
	ros-indigo/clam_moveit_config
	ros-indigo/r2_moveit_generated
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
