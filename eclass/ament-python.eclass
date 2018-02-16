# Copyright 2018 Open Source Robotics Foundation, Inc.
# Distributed under the terms of the BSD License

# @ECLASS: ament-cmake.eclass
# @MAINTAINER:
# hunter@openrobotics.org
# @AUTHOR:
# Hunter L. Allen <hunter@openrobotics.org>
# @BLURB: Template eclass for ament based ROS2 packages.
# @DESCRIPTION:
# Provides function for building ROS2 cmake packages on Gentoo.

ament-python_src_unpack() {
	default
        mv *${P}* ${P}
}

ament-python_src_compile() {
        python3 ./setup.py build
}

ament-python_src_install() {
        mkdir -p ${D}/${ROS_PREFIX}/lib/python3.5/site-packages
        export PYTHONPATH=${D}/${ROS_PREFIX}/lib/python3.5/site-packages
        export PYTHON_SITEDIR=lib/python3.5/site-packages
        python3 ./setup.py install --prefix=${D}/${ROS_PREFIX}
}

EXPORT_FUNCTIONS src_unpack src_compile src_install
