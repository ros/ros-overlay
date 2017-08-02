# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Open source driver for the SICK Visionary-T 3D TOF camera."
HOMEPAGE="http://wiki.ros.org/sick_visionary_t_driver"
SRC_URI="https://github.com/SICKAG/sick_visionary_t-release/archive/release/kinetic/sick_visionary_t_driver/0.0.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( Apache-1.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

