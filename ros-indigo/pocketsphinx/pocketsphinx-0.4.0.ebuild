# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is a simple wrapper around the pocketsphinx speech recognizer, \
   "
HOMEPAGE="http://ros.org/wiki/pocketsphinx"
SRC_URI="https://github.com/ros-gbp/pocketsphinx-release/archive/release/indigo/pocketsphinx/0.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	app-accessibility/pocketsphinx
	dev-python/gst-python
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

