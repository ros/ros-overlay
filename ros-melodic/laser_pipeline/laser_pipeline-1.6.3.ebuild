# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package of libraries for processing laser data, including converting l[...]"
HOMEPAGE="http://www.ros.org/wiki/laser_pipeline"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.6.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/laser_assembler
	ros-melodic/laser_filters
	ros-melodic/laser_geometry
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
