# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Metapackage referencing tutorials related to rviz and visualization."
HOMEPAGE="http://ros.org/wiki/visualization_tutorials"
SRC_URI="https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/visualization_tutorials/0.10.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/interactive_marker_tutorials
	ros-lunar/librviz_tutorial
	ros-lunar/rviz_plugin_tutorials
	ros-lunar/rviz_python_tutorial
	ros-lunar/visualization_marker_tutorials
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

