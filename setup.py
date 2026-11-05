import os
import sys
from setuptools import setup, find_packages
from fnmatch import fnmatchcase
from distutils.util import convert_path

standard_exclude = ('*.pyc', '*~', '.*', '*.bak', '*.swp*')
standard_exclude_directories = ('.*', 'CVS', '_darcs', './build', './dist', 'EGG-INFO', '*.egg-info')
def find_package_data(where='.', package='', exclude=standard_exclude, exclude_directories=standard_exclude_directories):
    out = {}
    stack = [(convert_path(where), '', package)]
    while stack:
        where, prefix, package = stack.pop(0)
        for name in os.listdir(where):
            fn = os.path.join(where, name)
            if os.path.isdir(fn):
                bad_name = False
                for pattern in exclude_directories:
                    if (fnmatchcase(name, pattern)
                        or fn.lower() == pattern.lower()):
                        bad_name = True
                        break
                if bad_name:
                    continue
                if os.path.isfile(os.path.join(fn, '__init__.py')):
                    if not package:
                        new_package = name
                    else:
                        new_package = package + '.' + name
                        stack.append((fn, '', new_package))
                else:
                    stack.append((fn, prefix + name + '/', package))
            else:
                bad_name = False
                for pattern in exclude:
                    if (fnmatchcase(name, pattern)
                        or fn.lower() == pattern.lower()):
                        bad_name = True
                        break
                if bad_name:
                    continue
                out.setdefault(package, []).append(prefix+name)
    return out

setup(name='docassemble.HelpForChildSupportObligors',
      version='0.3.1',
      description=('A docassemble guided interview for MA Department of Revenue / Child Support Enforcement'),
      long_description='# docassemble.HelpForChildSupportObligors\r\n\r\nA docassemble guided interview for MA Department of Revenue / Child Support Enforcement\r\n\r\n## Author\r\n\r\nCaroline Robinson, crobinson@mlri.org\r\n\r\n',
      long_description_content_type='text/markdown',
      author='Caroline Robinson',
      author_email='crobinson@mlri.org',
      license='The MIT License (MIT)',
      url='https://www.mlri.org/',
      packages=find_packages(),
      namespace_packages=['docassemble'],
      install_requires=[
          'docassemble.AssemblyLine>=2.8.0',
          'docassemble.VLPBranding @ git+https://github.com/MassLegalHelp/docassemble-VLPBranding.git@cb044b74bd905616c21967404c51f1b1104da501',
          'docassemble.income',
          'docassemble.ssa @ git+https://github.com/nonprofittechy/docassemble-ssa.git@5b0c30dc9e6ad04835f00bae03ed6248023836bc',
          'docassemble.GithubFeedbackForm',
      ],
      zip_safe=False,
      package_data=find_package_data(where='docassemble/HelpForChildSupportObligors/', package='docassemble.HelpForChildSupportObligors'),
     )

