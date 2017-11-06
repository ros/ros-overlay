# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rospilot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rospilot/rospilot-release/archive/release/indigo/rospilot/0.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/rosbridge_suite
	ros-indigo/roslaunch
	ros-indigo/rospilot_deps
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	media-video/vlc
	dev-python/cherrypy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roscpp
	ros-indigo/roslint
	media-gfx/gphoto2
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
