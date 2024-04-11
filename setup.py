#! /usr/bin/env python
from distutils.core import setup


if __name__ == '__main__':
    setup(
        author='Joséphine Wolf Oberholtzer',
        author_email='josephine.wolf.oberholtzer@gmail.com',
        install_requires=[
            'consort==0.1',
            'Sphinx==1.6.7',
        ],
        name='armilla',
        packages=['armilla'],
        url='https://github.com/josephine-wolf-oberholtzer/armilla',
        version='0.1',
        zip_safe=False,
        )
