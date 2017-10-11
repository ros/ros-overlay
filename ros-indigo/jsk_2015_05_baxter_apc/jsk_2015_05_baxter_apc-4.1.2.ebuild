# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS package for Amazon Picking Challenge in May 2015"
HOMEPAGE="http://wiki.ros.org/jsk_2015_05_baxter_apc"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_2015_05_baxter_apc/4.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxter_gazebo
	ros-indigo/baxtereus
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/imagesift
	ros-indigo/jsk_apc2015_common
	ros-indigo/jsk_pcl_ros
	ros-indigo/jsk_recognition_msgs
	ros-indigo/jsk_rqt_plugins
	ros-indigo/message_runtime
	ros-indigo/posedetection_msgs
	ros-indigo/roseus
	ros-indigo/rospy
	ros-indigo/rosserial_arduino
	ros-indigo/rosserial_client
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/turtlebot_description
	dev-python/numpy
	media-libs/opencv[python]
	dev-python/progressbar
	sci-libs/scikits_image
	sci-libs/scikits_learn
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-indigo/baxter_description
	ros-indigo/catkin
	ros-indigo/collada_urdf
	ros-indigo/euscollada
	ros-indigo/message_generation
	ros-indigo/xacro
	sci-electronics/gazebo
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
