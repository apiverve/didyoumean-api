from setuptools import setup, find_packages

setup(
    name='apiverve_didyoumean',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Did You Mean suggests spelling corrections for misspelled search queries and phrases. Pass any text string to receive the original query along with a list of alternate spelling suggestions.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/didyoumean?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
