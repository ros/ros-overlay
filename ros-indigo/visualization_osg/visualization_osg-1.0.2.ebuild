# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="visualization_osg is a metapackage providing support for visualization of geomet"
HOMEPAGE="http://wiki.ros.org/osg_interactive_markers"
SRC_URI="https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/indigo/visualization_osg/1.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/osg_interactive_markers
	ros-indigo/osg_markers
	ros-indigo/osg_utils
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

