# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Open source driver for the SICK Visionary-T 3D TOF camera."
HOMEPAGE="http://wiki.ros.org/sick_visionary_t_driver"
SRC_URI="https://github.com/SICKAG/sick_visionary_t-release/archive/release/indigo/sick_visionary_t_driver/0.0.5-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/roscpp
	ros-indigo/roslaunch
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
