# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Trep: Mechanical Simulation and Optimal Control Software"
HOMEPAGE="http://nxr.northwestern.edu/trep"
SRC_URI="https://github.com/MurpheyLab/trep-release/archive/release/kinetic/python_trep/1.0.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	media-libs/freeglut
	dev-lang/python
	dev-python/pillow
	dev-python/matplotlib
	dev-python/numpy
	dev-python/pyopengl
	dev-python/pyside
	dev-python/PyQt4
	dev-python/pyside[opengl]
	dev-python/PyQt4[opengl]
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
