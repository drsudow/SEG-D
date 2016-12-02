

from setuptools import setup

setup(
      name = 'SEGD',
      version = '0.a1',
      description = 'A Python3 reader for SEG-D rev3.1 binary data.',
      url = 'https://github.com/drsudow/SEG-D.git',
      author = 'Mattias Südow',
      author_email = 'mattias@sudow.com',
      license = 'MIT',
      classifiers = [
                     'Development Status :: 3 -Aplha',
                     'Intended Audience :: Science/Research',
                     'License :: OSI Approved :: MIT License',
                     'Topic :: Scientific/Engineering :: Information Analysis',
                     'Programming Language :: Python :: 3.5',
                     ],
      keywords = 'seismic SEGD',
      packages = ['SEGD'],
      install_requires = ['cython','numpy','datetime'],
      )
