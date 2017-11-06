# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ros package that includes plugins and nodes to convert occupied costmap2d[...]"
HOMEPAGE="http://wiki.ros.org/costmap_converter"
SRC_URI="https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/indigo/costmap_converter/0.0.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_2d
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
