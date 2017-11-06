# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Open source driver for the SICK Visionary-T 3D TOF camera."
HOMEPAGE="http://wiki.ros.org/sick_visionary_t"
SRC_URI="https://github.com/SICKAG/sick_visionary_t-release/archive/release/indigo/sick_visionary_t/0.0.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( Apache-1.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/sick_visionary_t_driver
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

