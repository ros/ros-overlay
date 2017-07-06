# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Meta-package of libraries for processing laser data, including converting laser '"
HOMEPAGE="http://www.ros.org/wiki/laser_pipeline"
SRC_URI="https://github.com/ros-gbp/laser_pipeline-release/archive/release/indigo/laser_pipeline/1.6.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_assembler
	ros-indigo/laser_filters
	ros-indigo/laser_geometry
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

