# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="visualization_osg is a metapackage providing support for visualization of g[...]"
HOMEPAGE="http://wiki.ros.org/osg_interactive_markers"
SRC_URI="https://github.com/uji-ros-pkg/${PN}-release/archive/release/melodic/${PN}/1.0.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/osg_interactive_markers
	ros-melodic/osg_markers
	ros-melodic/osg_utils
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
