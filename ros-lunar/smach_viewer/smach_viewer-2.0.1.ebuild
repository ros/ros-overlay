# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/smach_viewer"
SRC_URI="https://github.com/jbohren/executive_smach_visualization-release/archive/release/lunar/smach_viewer/2.0.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/smach_msgs
	ros-lunar/smach_ros
	media-gfx/graphviz
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

